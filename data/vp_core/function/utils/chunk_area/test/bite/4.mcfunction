#vp_core:utils/chunk_area/test/bite/1

scoreboard players set x_min int 3
scoreboard players set x_max int 5
scoreboard players set y_min int 3
scoreboard players set y_max int 5
execute as @e[tag=chunk_area,tag=test,predicate=vp_core:area_intersect] run function vp_core:utils/chunk_area/test/bite/run
function vp_core:utils/chunk_area/_model
data modify storage vp_core:io input set from storage vp_core:io result
function vp_core:utils/chunk_area/_new
tag @e[tag=result,limit=1] add test
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.rgba_plate set value [I;25,25,25,125]
execute as @e[tag=result,limit=1] run function marker_control:data/_store