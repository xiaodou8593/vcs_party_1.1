#vp_core:constructors/player_teleport/marker_pool
# vp_core:constructors/player_teleport/_start调用

summon marker 0 0 0 {Tags:["tmp"]}

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:constructors/player_teleport/marker_pool