#vp_core:utils/chunk_area/test/bite/run

function vp_core:utils/chunk_area/_bite
tag @e[tag=result] add test
execute as @e[tag=result] run function vp_core:utils/chunk_area/test/bite/set_color

kill @s