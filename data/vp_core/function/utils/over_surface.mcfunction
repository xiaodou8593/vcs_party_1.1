#vp_core:utils/over_surface
# vp_core:utils/_over_surface调用

execute if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run return run tp @s ~ ~ ~

scoreboard players remove loop int 1
execute if score loop int matches 1.. positioned ~ ~1 ~ run function vp_core:utils/over_surface