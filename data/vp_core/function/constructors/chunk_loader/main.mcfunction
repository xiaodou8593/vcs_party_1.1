#vp_core:constructors/chunk_loader/main
# vp_core:constructors/chunk_loader/tick调用
# 实体对象主程序

function vp_core:constructors/chunk_loader/_get
execute if score vp_progress int matches 0 run function vp_core:constructors/chunk_loader/_start
function vp_core:constructors/chunk_loader/_iter
function vp_core:constructors/chunk_loader/_store
execute if score vp_progress int matches 100 run function vp_core:constructors/chunk_loader/_del