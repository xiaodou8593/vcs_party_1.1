#vp_core:utils/_over_surface
# 世界表面位置
# 输入执行位置
# 输出执行实体位置

scoreboard players set loop int 256
execute if block ~ ~ ~ #minecraft:replaceable if block ~ ~-1 ~ #minecraft:replaceable run return run function vp_core:utils/over_surface_down
function vp_core:utils/over_surface