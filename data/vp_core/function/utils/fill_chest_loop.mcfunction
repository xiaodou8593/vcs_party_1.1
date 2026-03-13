#vp_core:utils/fill_chest_loop
# vp_core:utils/_fill_chest调用

summon marker 0 0 0 {Tags:["stmp"]}

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:utils/fill_chest_loop