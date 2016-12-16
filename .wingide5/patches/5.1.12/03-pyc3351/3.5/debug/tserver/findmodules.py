#########################################################################
""" findmodules.py -- Simple stub for finding the tracer module and
                      importing it under the appropriate name and
                      for the appropriate Python version
                      
                      Important: This should only import modules from
                      the standard library and the tracer module 

Copyright (c) 1999-2012, Archaeopteryx Software, Inc.  All rights reserved.

Written by Stephan R.A. Deibel and John P. Ehresman

"""
#########################################################################

import os
import sys
import imp
if sys.version_info >= (3, 3):
  import importlib
else:
  importlib = None
  
try:
  import traceback
except:
  traceback = None

if sys.hexversion >= 0x03000000:
  def has_key(o, key):
    return key in o
else:
  def has_key(o, key):
    return o.has_key(key)


def _IsStackless():
  """ Returns whether or not this is a stackless interpreter """
  
  stackless = sys.modules.get('stackless')
  if stackless is not None and repr(stackless).find('built-in') != -1:
    return 1
    
  # Look for _stackless and import stackless if it's found
  _stackless = sys.modules.get('_stackless')
  if _stackless is not None and repr(_stackless).find('built-in') != -1:
    return 1
  
  return 0
  
is_stackless = _IsStackless()

print_all_tracebacks = has_key(os.environ, 'WINGDB_PRINT_ALL_TRACEBACKS')
gLoggedLines = []
def Log(msg, log_exc=0):
  """ Write message to log if logging is enabled. """

  gLoggedLines.append(msg)
  if log_exc and traceback is not None:
    etype, value, tb = sys.exc_info()
    gLoggedLines.extend(traceback.format_exception(etype, value, tb))
  
  if not print_all_tracebacks:
    return
  
  try:
    sys.stderr.write(msg)
  except:
    pass
  if msg[-1:] != '\n':
    sys.stderr.write('\n')
    
  if log_exc and traceback is not None:
    traceback.print_exc(file=sys.stderr)

def _GetWin32TracerNames():
  """ Get list of tracer names to try to load on win32, but not cygwin. """
  
  import msvcrt

  major, minor = sys.version_info[:2]
  
  if is_stackless:
    mod_names = ['tdbgtracer%d%dstackless' % (major, minor),
                 'tdbgtracer%d%dstackless_x64' % (major, minor),
                 ]
  else:
    mod_names = ['tdbgtracer%d%d' % (major, minor),
                 'tdbgtracer%d%d_x64' % (major, minor),
                 ]
  
    # The vs2012 and vs2010 builds of 2.6 through 3.4 override
    # the above value because loading the vs2008 built tracer yields an
    # error dialog on some systems
    if (major, minor) in ((2, 6), (2, 7), (3, 2), (3, 3), (3, 4)):
      crt_major_version = '9'
      try:
        # Undocumented constant in all of the above versions, but not in
        # the maya 2.6 build
        if hasattr(msvcrt, 'CRT_ASSEMBLY_VERSION'):
          crt_major_version = msvcrt.CRT_ASSEMBLY_VERSION.split('.')[0]
        else:
          # Fallback to parsing sys.version text
          if 'MSC v.18' in sys.version:    # VS 2013
            crt_major_version = '12'
          elif 'MSC v.17' in sys.version:    # VS 2012
            crt_major_version = '11'
          elif 'MSC v.16' in sys.version:  # VS 2010
              crt_major_version = '10'
          elif 'MSC v.15' in sys.version:  # VS 2008
            crt_major_version = '9'
          elif 'MSC v.14' in sys.version:  # VS 2005
            crt_major_version = '8'
          elif 'MSC v.13' in sys.version:  # VS 2003
            crt_major_version = '7'
      except:
        crt_major_version = None
      if crt_major_version == '12':
        mod_names = ['tdbgtracer%d%d_vs2013' % (major, minor),
                     'tdbgtracer%d%d_vs2013_x64' % (major, minor),
                     ]
      elif crt_major_version == '11':
        mod_names = ['tdbgtracer%d%d_vs2012' % (major, minor),
                     'tdbgtracer%d%d_vs2012_x64' % (major, minor),
                     ]
      elif crt_major_version == '10':
        # crt version 10 is the default for 3.3 and 3.4
        if (major, minor) not in [(3, 3), (3, 4)]:
          mod_names = ['tdbgtracer%d%d_vs2010' % (major, minor),
                       'tdbgtracer%d%d_vs2010_x64' % (major, minor),
                       ]
      elif crt_major_version != '9':
        mod_names = ['tdbgtracer%d%d_with_crt9_manifest' % (major, minor),
                     'tdbgtracer%d%d_with_crt9_manifest_x64' % (major, minor),
                     ]
        
  # Always try the unversioned tdbgtracer last
  mod_names.append('tdbgtracer')
  return mod_names

# Unicode / string encoding note: strings instances derived from __file__ or
# sys.path will be in file system encoding, but sys.path may contain unicode
# instances. The default encoding will probably not be the file system
# encoding so the auto-conversions won't work so s in sys.path may fail. This
# code needs to work in python 2.x.

def _FindTracer():
  """ Find dbgtracer -- use module with no version if available, else look
  for one with first 2 components of version # of Python runtime.  Assumes
  dbgtracer is in the same directory as this module and this file is
  loaded as a module (so the __file__ attribute is valid).
  """
  
  major, minor = sys.version_info[:2]

  if is_stackless:
    mod_names = [
      'tdbgtracer%d%dstackless' % (major, minor),
      'tdbgtracer%d%dpydebugstackless' % (major, minor),
    ]
  # Note: Python 3.0 crashes on segfault if try to import non-debug lib in
  # debug version of Python so we must try the debug lib first
  else:
    mod_names = [
      'tdbgtracer',
      'tdbgtracer%d%dpydebug' % (major, minor),
      'tdbgtracer%d%d' % (major, minor),
    ]

  sub_dirs = []
  if sys.platform[:6] == 'darwin':
    if is_stackless:
      mod_names.extend([
        'tdbgtracer%d%dstacklessx64' % (major, minor),
        'tdbgtracer%d%dpydebugstacklessx64' % (major, minor),
      ])
    else:
      mod_names.extend([
        'tdbgtracer%d%dpydebugx64' % (major, minor),
        'tdbgtracer%d%dx64' % (major, minor),
      ])
  elif sys.platform[:6] == 'cygwin':
    mod_names = [
      'tdbgtracer%d%dcyg' % (major, minor)
    ]
  elif sys.platform[:5] == 'linux':
    try:
      cpu = os.uname()[4]
      if cpu[-2:] == '64':
        sub_dirs.append('64bit')
    except:
      pass
  elif sys.platform == 'win32':
    # This ignores any values inserted above by design
    mod_names = _GetWin32TracerNames()
    
  search_dirs = _GetDirectoriesToSearch(sub_dirs)
    
  # Try each name in each possible directory, in order
  Log('mod_names = %r' % mod_names)
  Log('search_dirs = %r' % search_dirs)
  for i in range(0, len(mod_names)):
    name = mod_names[i]
    for dir_i in range(0, len(search_dirs)):
      sdir = search_dirs[dir_i]
      try:
        # Use importlib in 3.3+; though it's still changing as of the 3.3a4
        # release so this may need to change
        if importlib is not None:
          loader = importlib.machinery.PathFinder.find_module(name, [sdir])
          if loader is None:
            Log("Failed to find loader for %s in %s"%(repr(name), repr(sdir)))
          else:
            return loader.load_module(name)
        # If no importlib, use the older imp module
        else:
          fp, pathname, description = imp.find_module(name, [sdir])
          return imp.load_module(name, fp, pathname, description)
      except ImportError:
        # Ignore all import errors except the last one.  Always make sure a
        # ref to the partial import is in sys.modules.  Because we load with the
        # imp calls the name in sys.modules will be name, with no package prefix
        if has_key(sys.modules, name):
          del sys.modules[name]
        
        Log("While trying to load %s from %s"%(repr(name), repr(sdir)), 
            log_exc=1)
        
        if dir_i == len(search_dirs) - 1 and i == len(mod_names) - 1:
          raise
      
  # Failed to import anything if reached here so raise ImportError
  raise ImportError("Failed to import tdbgtracer")

def _NormPath(p):
  """ Norm the path and lower case it on win32 """

  p = os.path.normpath(p)
  if sys.platform == 'win32':
    p = p.lower()
    
  return p

def _GetDirectoriesToSearch(sub_dirs):
  """ Return list of paths to search -- any path in sys.path ending with
  debug/tserver and the current dir along with any subdirectories are 
  returned """
    
  # Newer code so wrap in a try / except
  try:
    # Get list of all dirs to search, including dir this file is in and the dir
    # of any loaded debug.tserver package (this isn't in sys.path in the IDE
    # process)
    path_list = []
    for path_dir in sys.path:
      path_list.append(_NormPath(path_dir))
    this_dir = _NormPath(os.path.dirname(__file__))
    if this_dir not in path_list:
      path_list.append(this_dir)

    tserver_pkg = sys.modules.get('debug.tserver')
    if tserver_pkg is not None:
      path_dir = _NormPath(os.path.dirname(tserver_pkg.__file__))
      if path_dir not in path_list:
        path_list.append(path_dir)
    
    # Get list that end with debug + os.sep + tserver
    tserver_dirs = []
    for path_dir in path_list:
      if path_dir.endswith('debug' + os.sep + 'tserver'):
        tserver_dirs.append(path_dir)

    # Append dir on disk and all sub_dirs
    search_dirs = []
    for path_dir in tserver_dirs:
      src_dir = os.path.dirname(os.path.dirname(path_dir))
      if os.path.basename(src_dir) == 'src.zip':
        path_dir = os.path.join(src_dir[:-len('.zip')], path_dir[len(src_dir)+1:])
    
      search_dirs.append(path_dir)
      for sub in sub_dirs:
        sub_path_dir = os.path.join(path_dir, sub)
        if os.path.isdir(sub_path_dir):
          search_dirs.append(sub_path_dir)

    return search_dirs

  except:
    Log('Failed to expand search_dirs', log_exc=1)
    
  search_dirs = []
  relative_to = os.path.dirname(__file__)
  src_dir = os.path.dirname(os.path.dirname(relative_to))
  if os.path.basename(src_dir) == 'src.zip':
    relative_to = os.path.join(src_dir[:-len('.zip')], relative_to[len(src_dir)+1:])

  search_dirs.append(relative_to)
  for sub in sub_dirs:
    if os.path.isdir(os.path.join(relative_to, sub)):
      search_dirs.append(os.path.join(relative_to, sub))
  return search_dirs

try:
  try:
    dbgtracer = _FindTracer()
  except ImportError:
    # Import dbgtracer if it's builtin
    if imp.is_builtin('tdbgtracer'):
      import tdbgtracer
      dbgtracer = tdbgtracer
    else:
      raise 
    
  Log("dbgtracer=%s" % repr(dbgtracer))
    
except ImportError:
  # If traceback is available and logging worked, raise a
  # generic ImportError but attach the logged lines as an attribute
  if traceback is not None:  
    exc = ImportError("Failed to import tdbgtracer")
    exc.logged_lines = gLoggedLines
    raise exc
  else:
    raise

def HackToSupportChangedBytecode():
  """ Hack to deal with change in bytecode in python 3.5.  Works by
  inserting directory at start of sys.path.  The sys.path is reset
  after the debugger code is loaded. """
  
  if sys.version_info[:2] < (3, 5):
    return
  
  magic = imp.get_magic()
  if magic[0] != 23 or magic[1] != 13:
    return

  this_dir = os.path.dirname(__file__)
  pyc3351_dir = os.path.join(this_dir, 'pyc3351')
  Log('Inserting dir into sys.path: '+repr(pyc3351_dir))
  sys.path.insert(0, pyc3351_dir)
  
try:
  HackToSupportChangedBytecode()
except:
  Log('HackToSupportChangedBytecode failed', log_exc=True)

