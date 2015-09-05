# cshutils
###CSH repo to store useful csh shell scripts for diverse tasks
### cp2dirs.csh
* Copy one directory into another recursively.
```sh
$ cp2dirs.csh <rootin_dir> <destination_dir>
Example: copy mydir recursively in /tmp/tests
cp2dirs.csh mydir /tmp/tests 
```
### dirchk.csh
* Compare two directories and do size comparisons.
```sh
$ cp2dirs.csh <rootin_dir> <destination_dir>
Example: Compare recursively two recently copied directories
dirchk.csh /tmp/mydir /data/mydir
```
### find-fastq.csh
* Provide a directory name and recursively list fastq files and sizes.
```sh
$ cp2dirs.csh <rootin_dir> <destination_dir>
Example: Find recursevely all fastq files and files labelled with the fastq string
find-fastq.csh /tmp/mydir_full_of_fastq
```
### rm-non-fastq-v.csh
* Recursively and verbose go into a directory and deletes non-fastq files.
```sh
$ rm-non-fastq-v.csh <dir> 
Example: Recursively find and remove non-fastq files
rm-non-fastq-v.csh /tmp/mydir
```
### rm-non-fastq.csh
* Recursively and silently go into a directory and delete non-fastq files
```sh
$ rm-non-fastq.csh <dir> 
Example: Recursively find and remove non-fastq files
rm-non-fastq.csh /tmp/mydir
```
### gzip_fastq.csh
* Recursively find and compress fastq files.
```sh
$ gzip_fastq.csh /tmp/mydir 
Example: Recursively find and compress fastq files
gzip_fastq.csh /tmp/mydir 
```

