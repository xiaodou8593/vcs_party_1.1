#vp_core:constructors/player_setup/_model
# 使用临时对象构建数据模板
# 输出数据模板storage vp_core:io result

data modify storage vp_core:io result set value {vp_progress:0, player_set_func:""}

execute store result storage vp_core:io result.vp_progress int 1 run scoreboard players get vp_progress int
data modify storage vp_core:io result.player_set_func set from storage vp_core:io player_set_func