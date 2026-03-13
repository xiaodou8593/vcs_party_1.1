#vp_core:utils/fill_chest_count
# vp_core:utils/_fill_chest调用

execute if data storage vp_core:io input[0].count{} run function vp_core:utils/fill_chest_rand_count

data modify storage vp_core:io input append from storage vp_core:io input[0]
data remove storage vp_core:io input[0]

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:utils/fill_chest_count