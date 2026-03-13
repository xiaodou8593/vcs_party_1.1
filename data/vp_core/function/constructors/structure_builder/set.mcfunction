#vp_core:constructors/structure_builder/set
# vp_core:constructors/structure_builder/_new调用

execute store result score @s vp_progress run data get storage vp_core:io input.vp_progress
data modify entity @s data.field_size set from storage vp_core:io input.field_size
data modify entity @s data.field_height set from storage vp_core:io input.field_height
data modify entity @s data.field_center set from storage vp_core:io input.field_center
data modify entity @s data.field_index set from storage vp_core:io input.field_index
data modify entity @s data.structure_prefix set from storage vp_core:io input.structure_prefix

# 获取模块编号
scoreboard players operation @s module_id = #vp_core:constructors/structure_builder/ module_id