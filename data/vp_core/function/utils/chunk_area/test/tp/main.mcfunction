#vp_core:utils/chunk_area/test/tp/main

tag @e[tag=result] remove result
summon item_display 0 0 0 {item:{id:"minecraft:red_concrete",count:1b},Tags:["result", "red", "chunk_area_test_tp"],CustomName:"chunk_area_test_tp",Passengers:[{id:"minecraft:item_display",Tags:["result", "green", "chunk_area_test_tp"],CustomName:"chunk_area_test_tp",item:{id:"minecraft:green_concrete",count:1b},transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[1.0f,0.0f,0.0f]}}]}
data modify storage math:io xyz set value [4.0d,-59.0d,4.0d]
data modify entity @e[tag=result,tag=red,limit=1] Pos set from storage math:io xyz
data modify entity @e[tag=result,tag=green,limit=1] Pos set from storage math:io xyz
scoreboard players set @e[tag=result] killtime 3

#tag @e[tag=result] remove result
#summon text_display 0 0 0 {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[8.0f,8.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},text:"  ",Tags:["result", "chunk_area_test_tp"],CustomName:"chunk_area_test_tp"}
#data modify storage math:io xyz set value [5.0d,-59.0d,4.0d]
#data modify entity @e[tag=result,limit=1] Pos set from storage math:io xyz
#scoreboard players set @e[tag=result] killtime 4