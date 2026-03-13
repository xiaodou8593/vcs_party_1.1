#vp_core:constructors/player_teleport/set
# vp_core:constructors/player_teleport/_new调用

execute store result score @s vp_progress run data get storage vp_core:io input.vp_progress
data modify entity @s data.tp_points set from storage vp_core:io input.tp_points

# 获取模块编号
scoreboard players operation @s module_id = #vp_core:constructors/player_teleport/ module_id