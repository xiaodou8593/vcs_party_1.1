#vp_core:utils/chunk_area/_load_all
# 加载区域内所有区块
# 占用storage math:io xyz
# 占用temp{<temp_x_min,int>,<temp_y_min,int>,<temp_x_max,int>,<temp_y_max,int>,<temp_sx,int>,<temp_sy,int>}
# 需要传入世界实体为执行者

scoreboard players operation temp_x_min int = x_min int
scoreboard players operation temp_x_min int /= 16 int
scoreboard players operation temp_x_max int = x_max int
scoreboard players operation temp_x_max int /= 16 int
scoreboard players operation temp_sx int = x_max int
scoreboard players operation temp_sx int %= 16 int
execute if score temp_sx int matches 0 run scoreboard players remove temp_x_max int 1

scoreboard players operation temp_y_min int = y_min int
scoreboard players operation temp_y_min int /= 16 int
scoreboard players operation temp_y_max int = y_max int
scoreboard players operation temp_y_max int /= 16 int
scoreboard players operation temp_sy int = y_max int
scoreboard players operation temp_sy int %= 16 int
execute if score temp_sy int matches 0 run scoreboard players remove temp_y_max int 1

data modify storage math:io xyz set value [0.0d,0.0d,0.0d]
execute if score temp_x_min int <= temp_x_max int run function vp_core:utils/chunk_area/load_loop

# 区块安全
tp @s 0 0 0