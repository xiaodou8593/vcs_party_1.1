#vp_core:constructors/structure_builder/_iter
# 临时对象运行一次构造迭代
# 输出entity @e[tag=vp_instance]

function vp_core:utils/structure_saver/_place_structure
function vp_core:utils/structure_saver/_calc_total
execute store result score temp_index int run data get storage vp_core:io field_index
execute store result storage vp_core:io field_index int 1 run scoreboard players add temp_index int 1
scoreboard players operation vp_progress int = temp_index int
scoreboard players operation vp_progress int *= 100 int
scoreboard players operation vp_progress int /= res int
scoreboard players operation vp_progress int > 1 int