#vp_core:utils/chunk_area/_store
# 临时对象赋值到实体对象
# 输入执行实体

scoreboard players operation @s x_min = x_min int
scoreboard players operation @s x_max = x_max int
scoreboard players operation @s y_min = y_min int
scoreboard players operation @s y_max = y_max int
scoreboard players operation @s area_value = area_value int
data modify entity @s data.area_info set from storage vp_core:io area_info