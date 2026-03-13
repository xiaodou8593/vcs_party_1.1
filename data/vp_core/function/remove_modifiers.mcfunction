#vp_core:remove_modifiers
# vp_core:_reset_player调用

# 移除所有modifier
data modify storage vp_core:io stemp set value []
data modify storage vp_core:io stemp set from storage vp_core:io temp[0].modifiers
execute if data storage vp_core:io stemp[0] run data modify storage vp_core:io stemp[].a_id set from storage vp_core:io temp[0].id
execute if data storage vp_core:io stemp[0] run function vp_core:remove_modifier with storage vp_core:io stemp[0]

# 重置base值
$attribute @s $(id) base reset

data remove storage vp_core:io temp[0]
execute if data storage vp_core:io temp[0] run function vp_core:remove_modifiers with storage vp_core:io temp[0]