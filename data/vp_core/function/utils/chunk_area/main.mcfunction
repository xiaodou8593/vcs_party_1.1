#vp_core:utils/chunk_area/main
# vp_core:utils/chunk_area/tick调用
# 实体对象主程序

function vp_core:utils/chunk_area/_get
scoreboard players set @e[tag=chunk_area,tag=vp_temp_load,predicate=vp_core:area_intersect,x=0,y=0,z=0,distance=..1] killtime 10

function vp_core:utils/chunk_area/_check_all
execute if score res int matches 1 run function vp_core:utils/chunk_area/run_load_func with storage vp_core:io area_info