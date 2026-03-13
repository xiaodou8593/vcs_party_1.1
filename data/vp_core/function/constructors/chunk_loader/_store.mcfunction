#vp_core:constructors/chunk_loader/_store
# 临时对象赋值到实体对象
# 输入执行实体

scoreboard players operation @s vp_progress = vp_progress int
data modify entity @s data.field_size set from storage vp_core:io field_size
data modify entity @s data.field_height set from storage vp_core:io field_height
data modify entity @s data.field_center set from storage vp_core:io field_center
data modify entity @s data.field_index set from storage vp_core:io field_index
data modify entity @s data.structure_prefix set from storage vp_core:io structure_prefix
data modify entity @s data.load_area_uuid set from storage vp_core:io load_area_uuid