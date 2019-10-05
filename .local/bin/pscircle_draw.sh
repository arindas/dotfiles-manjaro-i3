#!/bin/sh

set -e

output=/tmp/pscircle.png 

pscircle --output=$output \
	--background-color=282828 \
	--toplists-font-face=Inconsolata \
	--toplists-font-color=fabd2f \
  --toplists-pid-font-color=b8bb26 \
	--tree-font-face=Inconsolata \
	--tree-font-color=fbf1c7 \
	--link-convexity=0.6 \
  --link-color-min=458588 \
  --link-color-max=fb4934 \
  --dot-color-min=8ec07c \
  --dot-color-max=fb4934 \
	--collapse-threads=1 \
	--max-children=100 \
	--tree-font-size=12 \
	--tree-radius-increment=132 \
	--output-width=1920 \
	--output-height=1080 \
	--dot-radius=4 \
	--dot-border-width=0 \
	--link-width=2 \
	--toplists-font-size=15 \
	--toplists-row-height=20 \
	--cpulist-center=600.0:-150.0 \
	--memlist-center=600.0:+150.0 \
	--toplists-bar-height=5 
	
if command -v feh > /dev/null; then
	feh --bg-fill $output 
	rm $output 
fi 	
