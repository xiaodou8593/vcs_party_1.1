#vp_core:constructors/player_setup/init
# 初始化player_setup模块

# 初始化模块控制
scoreboard objectives add int dummy
execute unless score module_control_inited int matches 1 run function module_control:_init

# 注册本模块
data modify storage module_control:io input set value {prefix:"vp_core:constructors/player_setup/",namespace:"vp_core"}
function module_control:data/_reg
scoreboard players operation #vp_core:constructors/player_setup/ module_id = res int

data modify storage vp_core:io player_set_func set value ""

scoreboard objectives add vp_progress dummy

function vp_core:constructors/player_setup/_class