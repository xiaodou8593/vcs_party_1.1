#vp_core:guis/structure_manager/kill_start_loop
# vp_core:guis/structure_manager/main调用

kill @e[tag=vp_structure_point,tag=structure_start,limit=1]

scoreboard players remove temp_start_cnt int 1
execute if score temp_start_cnt int matches 2.. run function vp_core:guis/structure_manager/kill_start_loop