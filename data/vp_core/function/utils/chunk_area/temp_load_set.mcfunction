#vp_core:utils/chunk_area/temp_load_set
# vp_core:utils/chunk_area/_temp_load调用
# vp_core:utils/chunk_area/temp_load_bite调用

tag @s add vp_temp_load
function marker_control:data/_get
data modify storage marker_control:io result.del_func set value "vp_core:utils/chunk_area/_unload_as"
function marker_control:data/_store
tag @s add entity_todel
scoreboard players set @s killtime 10