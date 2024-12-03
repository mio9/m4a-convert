#!/bin/zsh
#for i in *.m4a; do
#  ffmpeg -i "$i" "${i%.*}.flac"
#done

process_dir=$1

files=$(find "$process_dir" -type f -name "*.m4a")
echo $files > temp.txt
parallel ffmpeg -i {.}.m4a {.}.flac < temp.txt
# cleanup
rm temp.txt