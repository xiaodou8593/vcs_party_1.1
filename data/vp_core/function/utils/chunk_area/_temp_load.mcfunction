#vp_core:utils/chunk_area/_temp_load
# 临时加载区块，并产生任务区域实例
# 输出entity @e[tag=result]
# 需要传入世界实体为执行者

execute as @e[tag=chunk_area,tag=vp_temp_load,predicate=vp_core:area_intersect,x=0,y=0,z=0,distance=..1] run function vp_core:utils/chunk_area/temp_load_bite
function vp_core:utils/chunk_area/_load_all
# 产生加载区域
function vp_core:utils/chunk_area/_gen
execute as @e[tag=result,limit=1] run function vp_core:utils/chunk_area/temp_load_set

# 产生任务区域
function vp_core:utils/chunk_area/_gen
tag @e[tag=result,limit=1] add loading