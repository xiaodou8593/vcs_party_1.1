#vp_core:utils/chunk_area/set
# vp_core:utils/chunk_area/_new调用

execute store result score @s x_min run data get storage vp_core:io input.x_min
execute store result score @s x_max run data get storage vp_core:io input.x_max
execute store result score @s y_min run data get storage vp_core:io input.y_min
execute store result score @s y_max run data get storage vp_core:io input.y_max
execute store result score @s area_value run data get storage vp_core:io input.area_value
data modify entity @s data.area_info set from storage vp_core:io input.area_info