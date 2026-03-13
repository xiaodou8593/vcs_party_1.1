#vp_core:utils/_rand_points
# 在地图内生成随机点
# 输入{field_size:[storage vp_core:io field_size,Int],field_height:[storage vp_core:io field_size,Int],field_center:[storage vp_core:io field_size,ListDouble,3]}
# 输入随机点数量: <inp,int>
# 输出entity @e[tag=result]

execute store result score temp_l int run data get storage vp_core:io field_size 24
execute store result score temp_h int run data get storage vp_core:io field_height 48
execute store result score temp_sx int run data get storage vp_core:io field_center[0]
execute store result score temp_sy int run data get storage vp_core:io field_center[1]
execute store result score temp_sz int run data get storage vp_core:io field_center[2]
scoreboard players operation temp_sx int -= temp_l int
scoreboard players operation temp_sz int -= temp_l int
scoreboard players operation temp_l int *= 2 int

tag @e[tag=result] remove result
execute if score inp int matches 1.. summon item_display run function vp_core:utils/rand_points_loop