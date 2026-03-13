#vp_core:utils/structure_saver/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vp_core:io input

data modify storage vp_core:io field_size set from storage vp_core:io input.field_size
data modify storage vp_core:io field_height set from storage vp_core:io input.field_height
data modify storage vp_core:io field_center set from storage vp_core:io input.field_center
data modify storage vp_core:io field_index set from storage vp_core:io input.field_index
data modify storage vp_core:io structure_prefix set from storage vp_core:io input.structure_prefix