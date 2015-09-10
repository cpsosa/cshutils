#!/bin/csh
#
# Recursively and silently go into a directory and delete empty directories
# Usage: rm-empty-dirs.csh <dir> 
# Example: Recursively empty directories
#          rm-empty-dirs.csh /tmp/mydir 
# Note: if there are multiple layers of empty directories
#       you need to run the script multiple times.
#
 #
#
#
echo "$USER running $0 started: `date`"
if ($#argv != 1) then
   echo "Usage: $0 requires a single directory to recursevely delete empty directories"
   echo "$0 <dir> "
   goto done
endif
set root=$1
if ( ! -d ${root} ) then
   echo "Your directory does not exist, please check the path"
   echo "You typed: ${root} for directory "
   goto done
endif
echo "You are deleting the following empty directories: "
find ${root} -type d -empty -exec rmdir {} \;
echo "$0 ended: `date`"

done:
 exit 0
error:
 exit 1
