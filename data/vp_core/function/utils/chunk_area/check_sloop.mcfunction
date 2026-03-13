#vp_core:utils/chunk_area/check_sloop
# vp_core:utils/chunk_area/check_loop调用

scoreboard players operation temp_sx int = temp_x_min int
scoreboard players operation temp_sy int = temp_y int
scoreboard players operation temp_sx int *= 16 int
scoreboard players operation temp_sy int *= 16 int
execute store result storage math:io xyz[0] double 1 run scoreboard players add temp_sx int 8
execute store result storage math:io xyz[2] double 1 run scoreboard players add temp_sy int 8
data modify entity @s Pos set from storage math:io xyz
execute at @s unless loaded ~ ~ ~ run scoreboard players set res int 0

scoreboard players add temp_y int 1
execute if score temp_y int <= temp_y_max int run function vp_core:utils/chunk_area/check_sloop