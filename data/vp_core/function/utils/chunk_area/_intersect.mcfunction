#vp_core:utils/chunk_area/_intersect
# 用临时对象拆解输入的区域实例，保留交集
# 占用storage vp_core:io input
# 占用temp{<temp_l,int>,<temp_s,int>,<temp_x_min,int>,<temp_x_max,int>,<temp_y_min,int>,<temp_y_max,int>}
# 输入chunk_area实例作为执行者
# 输出entity @e[tag=result]

tag @e[tag=result] remove result
data modify storage vp_core:io input set value {x_min:0, x_max:0, y_min:0, y_max:0, area_value:0, area_info:{}}

# 尝试生成相交区域
scoreboard players operation temp_x_min int = @s x_min
scoreboard players operation temp_x_max int = @s x_max
scoreboard players operation temp_y_min int = @s y_min
scoreboard players operation temp_y_max int = @s y_max
execute store result storage vp_core:io input.x_min int 1 run scoreboard players operation temp_x_min int > x_min int
execute store result storage vp_core:io input.x_max int 1 run scoreboard players operation temp_x_max int < x_max int
execute store result storage vp_core:io input.y_min int 1 run scoreboard players operation temp_y_min int > y_min int
execute store result storage vp_core:io input.y_max int 1 run scoreboard players operation temp_y_max int < y_max int
scoreboard players operation temp_l int = temp_x_max int
scoreboard players operation temp_l int -= temp_x_min int
scoreboard players operation temp_s int = temp_y_max int
scoreboard players operation temp_s int -= temp_y_min int
execute store result storage vp_core:io input.area_value int 1 run scoreboard players operation temp_s int *= temp_l int
execute if score temp_s int matches 1.. run function vp_core:utils/chunk_area/_new