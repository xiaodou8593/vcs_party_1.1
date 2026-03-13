#vp_core:utils/fill_chest_slot
# vp_core:utils/_fill_chest调用

data modify entity @s data.item.Slot set from storage vp_core:io temp_slots[0]
data modify storage vp_core:io temp_slots append from storage vp_core:io temp_slots[0]
data remove storage vp_core:io temp_slots[0]