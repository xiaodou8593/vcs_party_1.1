#vp_core:constructors/barrier_builder/_calc_area
# 计算区域三个方向的面积(48×48为单位)
# 输出{<x_area,int>,<y_area,int>,<z_area,int>}

execute store result score y_area int run data get storage vp_core:io field_size
execute store result score x_area int run data get storage vp_core:io field_height
scoreboard players operation x_area int *= y_area int
scoreboard players operation z_area int = x_area int
scoreboard players operation y_area int *= y_area int