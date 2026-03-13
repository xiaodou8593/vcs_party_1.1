#vp_core:constructors/player_setup/_get
# 实体对象赋值到临时对象
# 输入执行实体

scoreboard players operation vp_progress int = @s vp_progress
data modify storage vp_core:io player_set_func set from entity @s data.player_set_func