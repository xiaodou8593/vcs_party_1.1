#vp_core:utils/structure_saver/decorated_pot
# vp_core:utils/structure_saver/_structure_block调用

setblock ~ ~1 ~ air
setblock ~ ~1 ~ decorated_pot{item:{id:"minecraft:barrier",count:1b,components:{"minecraft:custom_data":{}}}}

data modify storage vp_core:io temp set value {field_size:0, field_height:0}
data modify storage vp_core:io temp.field_size set from storage vp_core:io field_size
data modify storage vp_core:io temp.field_height set from storage vp_core:io field_height
data modify block ~ ~1 ~ item.components."minecraft:custom_data" merge from storage vp_core:io temp

$data modify block ~ ~ ~ name set value "$(structure_prefix)metadata"