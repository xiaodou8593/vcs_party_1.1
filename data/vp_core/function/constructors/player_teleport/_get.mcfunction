#vp_core:constructors/player_teleport/_get
# 实体对象赋值到临时对象
# 输入执行实体

scoreboard players operation vp_progress int = @s vp_progress
data modify storage vp_core:io tp_points set from entity @s data.tp_points