#vp_core:utils/game_control/watch_build_tp
# vp_core:utils/game_control/watch_build_get调用

data modify entity @s Pos set from storage vp_core:io temp[0]
execute at @s run tp @a[tag=tmp,limit=1] ~ ~48 ~
tp @s 0 0 0