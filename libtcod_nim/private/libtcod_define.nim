#
# libtcod 1.5.1
# Copyright (c) 2008,2009,2010,2012 Jice & Mingos
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * The name of Jice or Mingos may not be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY JICE AND MINGOS ``AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL JICE OR MINGOS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

{.deadCodeElim: on.}

const
  NO_UNICODE* = false  ## disable unicode support
  NO_OPENGL* = false   ## disable opengl support

when defined(linux):
  when defined(debug):
    const LIB_NAME* = "libtcod_debug.so"
  else:
    const LIB_NAME* = "libtcod.so(|.1.5.1)"
elif defined(MacOSX):
  when defined(debug):
    const LIB_NAME* = "libtcod_debug.dylib"
  else:
    const LIB_NAME* = "libtcod.dylib"
else: # windows
  when defined(debug):
    const LIB_NAME* = "libtcod-mingw-debug.dll"
  else:
    const LIB_NAME* = "libtcod-mingw.dll"

const
  HEXVERSION* = 0x010501
  STRVERSION* = "1.5.1"
  TECHVERSION* = 0x01050103
  WRAPPERVERSION* = "0.98"

