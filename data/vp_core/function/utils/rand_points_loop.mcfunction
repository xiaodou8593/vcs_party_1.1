#vp_core:utils/rand_points_loop
# vp_core:utils/_rand_points调用

execute store result score temp_x int run random value 0..2147483640
execute store result score temp_y int run random value 0..2147483640
execute store result score temp_z int run random value 0..2147483640
scoreboard players operation temp_x int %= temp_l int
scoreboard players operation temp_y int %= temp_h int
scoreboard players operation temp_z int %= temp_l int
execute store result storage math:io xyz[0] double 1 run scoreboard players operation temp_x int += temp_sx int
execute store result storage math:io xyz[1] double 1 run scoreboard players operation temp_y int += temp_sy int
execute store result storage math:io xyz[2] double 1 run scoreboard players operation temp_z int += temp_sz int
data modify entity @s Pos set from storage math:io xyz
tag @s add result

scoreboard players remove inp int 1
execute if score inp int matches 1.. summon item_display run function vp_core:utils/rand_points_loop