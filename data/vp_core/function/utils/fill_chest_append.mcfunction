#vp_core:utils/fill_chest_append
# vp_core:utils/_fill_chest调用

$execute as @e[tag=stmp,limit=$(temp_cnt)] run data modify storage vp_core:io result append from entity @s data.item