set -e

cd ~/Pictures
# --background-image=back.png\
pscircle \
	--output=ps.png\
	--background-color=0f1322 \
	--root-pid=1 \
	--dot-color-min=46a4d8 \
	--dot-color-max=900 \
	--tree-font-color=eee \
	--toplists-font-color=eee \
	--toplists-pid-font-color=777 \
	--toplists-bar-background=999 \
	--toplists-bar-color=fff \
	--max-children=53 \
	--tree-sector-angle=4.1415 \
	--tree-rotate=true \
	--tree-rotation-angle=2.0708 \
	--tree-center=-1580:0 \
	--cpulist-center=300:0 \
	--memlist-center=800:0
#fff#0a0#900#0f1322#777#999#ddbf54
#--tree-center=-1580:0 \
sxiv ~/Pictures/ps.png -f

# pscircle \
# 	--output=ps.png\
# 	--background-color=fff \q
# 	--link-color-min=aaa \
# 	--link-color-max=900 \
# 	--dot-color-min=0a0 \
# 	--dot-color-max=900 \
# 	--tree-font-color=444 \
# 	--toplists-font-color=444 \
# 	--toplists-pid-font-color=777 \
# 	--toplists-bar-background=999 \
# 	--toplists-qqqqqqq-color=ddbf54 \
# 	--max-children=40 \
# 	--root-pid=1 \
# 	--tree-sector-angle=3.9269 \
# 	--tree-center=0:350 \
# 	--tree-rotate=true \
# 	--tree-rotation-angle=3.5342 \
# 	--cpulist-center=-250:700 \
# 	--memlist-center=250:700

