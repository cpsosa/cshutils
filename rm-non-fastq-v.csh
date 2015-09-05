#!/bin/csh
#
# Recursively and verbose go into a directory and deletes non-fastq files
# Usage: rm-non-fastq-v.csh <dir> 
# Example: Recursively find and remove non-fastq files
#          rm-non-fastq-v.csh /tmp/mydir 
# IMPORTANT Note: This script will delete files but it does it verbose as a precaution. 
#
# #
#
#
echo "$USER running $0 started: `date`"
if ($#argv != 1) then
   echo "Usage: $0 requires a single directory to recursive delete non-fastq or non-fastq.gz files""
   echo "$0 <dir> "
   goto done
endif
set root=$1
if ( ! -d ${root} ) then
   echo "Your directory does not exist, please check the path"
   echo "You typed: ${root} for directory "
   goto done
endif
echo "You are deleting the following files: "
find ${root} ! -name '*.fastq*'  -exec rm -i {} \;
echo "$0 ended: `date`"

done:
 exit 0
error:
 exit 1
