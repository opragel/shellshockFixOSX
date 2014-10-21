#!/bin/bash
# Requires xcode to be run and license agreement accepted to work!
# Do not run under sudo
mkdir bash-fix
cd bash-fix
curl https://opensource.apple.com/tarballs/bash/bash-92.tar.gz | tar zxf -
cd bash-92/bash-3.2
curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-052 | patch -p0    
curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-053 | patch -p0  
[ "$ADD_IMPORT_FUNCTIONS_PATCH" == "YES" ] && curl http://alblue.bandlem.com/import_functions.patch | patch -p0
[ "$ADD_IMPORT_FUNCTIONS_PATCH" == "YES" ] || curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-054 | patch -p0
[ "$ADD_IMPORT_FUNCTIONS_PATCH" == "YES" ] || curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-055 | patch -p0
[ "$ADD_IMPORT_FUNCTIONS_PATCH" == "YES" ] || curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-056 | patch -p0
[ "$ADD_IMPORT_FUNCTIONS_PATCH" == "YES" ] || curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-057 | patch -p0
cd ..
xcodebuild
sudo cp /bin/bash /bin/bash.bak
sudo cp /bin/sh /bin/sh.bak
sudo cp build/Release/bash /bin
sudo cp build/Release/sh /bin
sudo chmod a-x /bin/bash.bak
sudo chmod a-x /bin/sh.bak