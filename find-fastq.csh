#!/bin/csh
#
# Provide a directory name and recursively list fastq files and sizes
# Usage: find-fastq.csh <dir> 
# Example: Find recursevely all fastq files and files labelled with the "fastq" string
#          find-fastq.csh /tmp/mydir_full_of_fastq 
#
#
echo "$USER running $0 started: `date`"
if ($#argv != 1) then
   echo "Usage: $0 requires a single directory to recursively delete non-fastq or non-fastq.gz files""
   echo "$0 <dir> "
   goto done
endif
set root=$1
if ( ! -d ${root} ) then
   echo "Your directory does not exist, please check the path"
   echo "You typed: ${root} for directory "
   goto done
endif
echo "List and sizes of fastq files: "
du -ah ${root} | grep -i '\.fastq\>'
echo "$0 ended: `date`"

done:
 exit 0
error:
 exit 1
