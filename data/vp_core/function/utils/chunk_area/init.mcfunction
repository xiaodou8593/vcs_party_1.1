#vp_core:utils/chunk_area/init
# 初始化chunk_area模块

# 初始化模块控制
scoreboard objectives add int dummy
execute unless score module_control_inited int matches 1 run function module_control:_init

# 注册本模块
data modify storage module_control:io input set value {prefix:"vp_core:utils/chunk_area/",namespace:"vp_core"}
function module_control:data/_reg
scoreboard players operation #vp_core:utils/chunk_area/ module_id = res int

data modify storage vp_core:io area_info set value {}

scoreboard objectives add x_min dummy
scoreboard objectives add x_max dummy
scoreboard objectives add y_min dummy
scoreboard objectives add y_max dummy
scoreboard objectives add area_value dummy