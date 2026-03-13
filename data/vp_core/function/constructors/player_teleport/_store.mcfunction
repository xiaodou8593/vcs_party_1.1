#vp_core:constructors/player_teleport/_store
# 临时对象赋值到实体对象
# 输入执行实体

scoreboard players operation @s vp_progress = vp_progress int
data modify entity @s data.tp_points set from storage vp_core:io tp_points