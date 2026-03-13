#vp_core:constructors/player_setup/main
# vp_core:constructors/player_setup/tick调用
# 实体对象主程序

function vp_core:constructors/player_setup/_get
execute if score vp_progress int matches 0 run function vp_core:constructors/player_setup/_start
function vp_core:constructors/player_setup/_iter
function vp_core:constructors/player_setup/_store
execute if score vp_progress int matches 100 run function vp_core:constructors/player_setup/_del