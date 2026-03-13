#vp_core:remove_modifier
# vp_core:remove_modifiers调用

$attribute @s $(a_id) modifier remove $(id)

data remove storage vp_core:io stemp[0]
execute if data storage vp_core:io stemp[0] run function vp_core:remove_modifier with storage vp_core:io stemp[0]