#vp_core:constructors/player_teleport/main
# vp_core:constructors/player_teleport/tick调用
# 实体对象主程序

function vp_core:constructors/player_teleport/_get
execute if score vp_progress int matches 0 run function vp_core:constructors/player_teleport/_start
function vp_core:constructors/player_teleport/_iter
function vp_core:constructors/player_teleport/_store
execute if score vp_progress int matches 100 run function vp_core:constructors/player_teleport/_del