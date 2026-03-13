#vp_core:utils/game_control/watch_build_get
# vp_core:utils/game_control/watch_build调用
# vp_core:utils/game_control/watch_build_as调用

tag @s add tmp
execute as @e[tag=math_marker,limit=1] run function vp_core:utils/game_control/watch_build_tp
tag @s remove tmp

data modify storage vp_core:io temp append from storage vp_core:io temp[0]
data remove storage vp_core:io temp[0]