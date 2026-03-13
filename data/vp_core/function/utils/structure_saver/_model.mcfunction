#vp_core:utils/structure_saver/_model
# 使用临时对象构建数据模板
# 输出数据模板storage vp_core:io result

data modify storage vp_core:io result set value {field_size:0, field_height:0, field_center:[0.0d, 0.0d, 0.0d], field_index:0, structure_prefix:""}

data modify storage vp_core:io result.field_size set from storage vp_core:io field_size
data modify storage vp_core:io result.field_height set from storage vp_core:io field_height
data modify storage vp_core:io result.field_center set from storage vp_core:io field_center
data modify storage vp_core:io result.field_index set from storage vp_core:io field_index
data modify storage vp_core:io result.structure_prefix set from storage vp_core:io structure_prefix