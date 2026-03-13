#vp_core:utils/fill_chest_get
# vp_core:utils/_fill_chest调用

data modify entity @s data.item set from storage vp_core:io input[0]
data modify storage vp_core:io input append from storage vp_core:io input[0]
data remove storage vp_core:io input[0]