#vp_core:utils/chunk_area/temp_load_bite
# vp_core:utils/chunk_area/_temp_load调用

function vp_core:utils/chunk_area/_bite
execute as @e[tag=result] run function vp_core:utils/chunk_area/temp_load_set
kill @s