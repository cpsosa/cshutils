#!/bin/csh
#
# Provide a directory name and recursively gzip fastq files 
# Usage: gzip_fastq.csh <dir> 
# Example: Recursively find and compress fastq files
#          gzip_fastq.csh /tmp/mydir 
# IMPORTANT Note: This script will take a considerable amount of time.
#                 You might want to run find_fastq.csh first and then
#                 plan gzip-ing files.
#                 Also, this scripts will ask you if you want to overwritte
#                 and existing gzip files so you need to run interactively.
#
#
echo "$USER running $0 started: `date`"
if ($#argv != 1) then
   echo "Usage: $0 requires a single directory to recursively gzip fastq files""
   echo "$0 <dir> "
   goto done
endif
set root=$1
if ( ! -d ${root} ) then
   echo "Your directory does not exist, please check the path"
   echo "You typed: ${root} for directory "
   goto done
endif
echo "gzip-ing: "
find ${root} -type f -name '*.fastq' -print -exec gzip "{}" \;
echo "$0 ended: `date`"

done:
 exit 0
error:
 exit 1
