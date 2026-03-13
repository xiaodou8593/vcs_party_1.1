#vp_core:constructors/player_setup/_store
# 临时对象赋值到实体对象
# 输入执行实体

scoreboard players operation @s vp_progress = vp_progress int
data modify entity @s data.player_set_func set from storage vp_core:io player_set_func