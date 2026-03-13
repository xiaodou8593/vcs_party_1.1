#vp_core:guis/structure_manager/kill_end_loop
# vp_core:guis/structure_manager/main调用

kill @e[tag=vp_structure_point,tag=structure_end,limit=1]

scoreboard players remove temp_end_cnt int 1
execute if score temp_end_cnt int matches 2.. run function vp_core:guis/structure_manager/kill_end_loop