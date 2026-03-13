#vp_core:constructors/barrier_builder/main
# vp_core:constructors/barrier_builder/tick调用
# 实体对象主程序

function vp_core:constructors/barrier_builder/_get
execute if score vp_progress int matches 0 run function vp_core:constructors/barrier_builder/_start
function vp_core:constructors/barrier_builder/_iter
function vp_core:constructors/barrier_builder/_store
execute if score vp_progress int matches 100 run function vp_core:constructors/barrier_builder/_del