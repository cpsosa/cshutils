#!/bin/csh
#
# Copy one directory into another recursively.
# Usage: cp2dirs.csh <rootin_dir> <destination_dir>
# Example: copy mydir recursively in /tmp/tests
#          cp2dirs.csh mydir /tmp/tests
#
#
echo "$USER running $0 started: `date`"
if ($#argv != 2) then
   echo "Usage: $0 requires the full path of the origin and destination (directories)."
   echo "This script copies all directories from the origin to the destination directory"
   goto done
 endif
set root=$1
set dest=$2
if ( ! -d ${root} || ! -d ${dest} ) then
   echo "One of your directories or both do not exist, please check the path"
   echo "You typed: ${root} for directory 1"
   echo "You typed: ${dest} for directory 2"
   goto done
endif
echo "Your destination directory is: ${dest}"
foreach root (`ls -d ${root}/*`)
   if ( -d ${root} ) then
      echo "Copying directory: ${root}"
      cp -r ${root} ${dest}
   else
      echo "Only copying directories ${root} is a file"
   endif
end
echo "$0 ended: `date`"

done:
 exit 0
error:
 exit 1
