#vp_core:utils/chunk_area/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vp_core:io input

execute store result score x_min int run data get storage vp_core:io input.x_min
execute store result score x_max int run data get storage vp_core:io input.x_max
execute store result score y_min int run data get storage vp_core:io input.y_min
execute store result score y_max int run data get storage vp_core:io input.y_max
execute store result score area_value int run data get storage vp_core:io input.area_value
data modify storage vp_core:io area_info set from storage vp_core:io input.area_info