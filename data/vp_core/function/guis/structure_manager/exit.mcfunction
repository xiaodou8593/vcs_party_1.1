#vp_core:guis/structure_manager/exit
# vp_core:guis/structure_manager/main调用

kill @e[tag=vp_structure_point]

# 如果栈中还有其它UI
function iframe:gui_stack/_empty
execute if score res int matches 0 run return run function iframe:gui_stack/_pop

function iframe:_exit_inv