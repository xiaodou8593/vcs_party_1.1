#vp_core:constructors/chunk_loader/_start
# 临时对象开始构造迭代
# 输出entity @e[tag=vp_instance]

# 设置chunk_area临时对象
data modify storage vp_core:io area_info set value {}
execute store result score x_min int run data get storage vp_core:io field_center[0]
execute store result score y_min int run data get storage vp_core:io field_center[2]
scoreboard players operation x_max int = x_min int
scoreboard players operation y_max int = y_min int
execute store result score temp_s int run data get storage vp_core:io field_size 24
scoreboard players operation x_min int -= temp_s int
scoreboard players operation y_min int -= temp_s int
scoreboard players operation x_max int += temp_s int
scoreboard players operation y_max int += temp_s int
scoreboard players operation area_value int = temp_s int
scoreboard players operation area_value int *= 2 int
scoreboard players operation area_value int *= area_value int
# 产生区块加载任务
function vp_core:utils/chunk_area/_temp_load
tag @e[tag=result,limit=1] add vp_instance
data modify storage vp_core:io load_area_uuid set from entity @e[tag=result,limit=1] UUID
data modify entity @e[tag=result,limit=1] data.area_info.chunk_loader_uuid set from entity @s UUID
data modify entity @e[tag=result,limit=1] data.area_info.load_func set value "vp_core:constructors/chunk_loader/unleash"

scoreboard players set vp_progress int 1