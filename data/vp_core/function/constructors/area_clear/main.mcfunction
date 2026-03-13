#vp_core:constructors/area_clear/main
# vp_core:constructors/area_clear/tick调用
# 实体对象主程序

function vp_core:constructors/area_clear/_get
execute if score vp_progress int matches 0 run function vp_core:constructors/area_clear/_start
function vp_core:constructors/area_clear/_iter
function vp_core:constructors/area_clear/_store
execute if score vp_progress int matches 100 run function vp_core:constructors/area_clear/_del