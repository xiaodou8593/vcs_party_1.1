#vp_core:utils/chunk_area/_model
# 使用临时对象构建数据模板
# 输出数据模板storage vp_core:io result

data modify storage vp_core:io result set value {x_min:0, x_max:0, y_min:0, y_max:0, area_value:0, area_info:{}}

execute store result storage vp_core:io result.x_min int 1 run scoreboard players get x_min int
execute store result storage vp_core:io result.x_max int 1 run scoreboard players get x_max int
execute store result storage vp_core:io result.y_min int 1 run scoreboard players get y_min int
execute store result storage vp_core:io result.y_max int 1 run scoreboard players get y_max int
execute store result storage vp_core:io result.area_value int 1 run scoreboard players get area_value int
data modify storage vp_core:io result.area_info set from storage vp_core:io area_info