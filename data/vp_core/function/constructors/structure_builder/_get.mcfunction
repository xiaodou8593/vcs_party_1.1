#vp_core:constructors/structure_builder/_get
# 实体对象赋值到临时对象
# 输入执行实体

scoreboard players operation vp_progress int = @s vp_progress
data modify storage vp_core:io field_size set from entity @s data.field_size
data modify storage vp_core:io field_height set from entity @s data.field_height
data modify storage vp_core:io field_center set from entity @s data.field_center
data modify storage vp_core:io field_index set from entity @s data.field_index
data modify storage vp_core:io structure_prefix set from entity @s data.structure_prefix