#!/bin/csh
#
# Compare two directories and do size comparisons.
# Usage: dirchk.csh <rootin_dir> <destination_dir>
# Example: Compare recursively two recently copied directories
#          dirchk.csh /tmp/mydir /data/mydir
#
#
echo "$USER running $0 started: `date`"
if ($#argv != 2) then
   echo "Usage: $0 requires the full path for both directories to be compared."
   echo "$0 <dir1 full path> <dir2 full path>"
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
echo "Directory $1"
echo "***********"
echo "Grand total `du -s ${root}` in number of disk blocks or  `du -sh ${root}`"
echo "***********"
echo "Directory  $2"
echo "***********"
echo "Grand total `du -s ${dest}` in number of disk blocks or  `du -sh ${dest}`"
echo "***********"
echo "$0 ended: `date`"

done:
 exit 0
error:
 exit 1
