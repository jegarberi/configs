#!/bin/bash
shopt -s nullglob
 
cd ~/Pictures/wallpaper

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}
	((range)) && feh --bg-scale "${files[RANDOM % range]}"
	sleep 30m
done


# 另外一种脚本写法
# while true; do
# 	find ~/.wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
# 		shuf -n1 -z | xargs -0 feh --bg-scale
# 	sleep 15m
# done
# 参见 https://wiki.archlinux.org/index.php/Feh_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
