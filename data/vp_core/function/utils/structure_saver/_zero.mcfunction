#vp_core:utils/structure_saver/_zero
# 把临时对象的全部数据置0

data modify storage vp_core:io field_size set value 0
data modify storage vp_core:io field_height set value 0
data modify storage vp_core:io field_center set value [0.0d, 0.0d, 0.0d]
data modify storage vp_core:io field_index set value 0
data modify storage vp_core:io structure_prefix set value ""