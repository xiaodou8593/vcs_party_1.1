#vp_core:utils/chunk_area/_get
# 实体对象赋值到临时对象
# 输入执行实体

scoreboard players operation x_min int = @s x_min
scoreboard players operation x_max int = @s x_max
scoreboard players operation y_min int = @s y_min
scoreboard players operation y_max int = @s y_max
scoreboard players operation area_value int = @s area_value
data modify storage vp_core:io area_info set from entity @s data.area_info