#vp_core:utils/chunk_area/unload_loop
# vp_core:utils/chunk_area/_unload_all调用

scoreboard players operation temp_y int = temp_y_min int
execute if score temp_y int <= temp_y_max int run function vp_core:utils/chunk_area/unload_sloop

scoreboard players add temp_x_min int 1
execute if score temp_x_min int <= temp_x_max int run function vp_core:utils/chunk_area/unload_loop