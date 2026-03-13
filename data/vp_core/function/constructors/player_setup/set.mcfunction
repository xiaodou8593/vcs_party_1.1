#vp_core:constructors/player_setup/set
# vp_core:constructors/player_setup/_new调用

execute store result score @s vp_progress run data get storage vp_core:io input.vp_progress
data modify entity @s data.player_set_func set from storage vp_core:io input.player_set_func

# 获取模块编号
scoreboard players operation @s module_id = #vp_core:constructors/player_setup/ module_id