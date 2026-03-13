#vp_core:constructors/area_clear/init
# 初始化area_clear模块

# 初始化模块控制
scoreboard objectives add int dummy
execute unless score module_control_inited int matches 1 run function module_control:_init

# 注册本模块
data modify storage module_control:io input set value {prefix:"vp_core:constructors/area_clear/",namespace:"vp_core"}
function module_control:data/_reg
scoreboard players operation #vp_core:constructors/area_clear/ module_id = res int

data modify storage vp_core:io field_size set value 0
data modify storage vp_core:io field_height set value 0
data modify storage vp_core:io field_center set value [0.0d, 0.0d, 0.0d]
data modify storage vp_core:io field_index set value 0
data modify storage vp_core:io structure_prefix set value ""

scoreboard objectives add vp_progress dummy

function vp_core:constructors/area_clear/_class