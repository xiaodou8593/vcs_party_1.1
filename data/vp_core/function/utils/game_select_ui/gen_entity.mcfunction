#vp_core:utils/game_select_ui/gen_entity
# vp_core:utils/game_select_ui/_gen调用

summon item_display ~ ~1.8 ~ {Tags:["vp_game_select_ui_set","vp_game_select_ui"],CustomName:"vp_game_select_ui",interpolation_duration:1}
item replace entity @e[tag=vp_game_select_ui,limit=1] container.0 with glass
data modify entity @e[tag=vp_game_select_ui,limit=1] transformation.scale set value [0.75f,0.75f,0.75f]
execute as @e[tag=vp_game_select_ui,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon text_display ~ ~2.5 ~ {Tags:["vp_game_select_ui_set","vp_game_select_ui_text"],CustomName:"vp_game_select_ui_text",billboard:"center"}
data modify entity @e[tag=vp_game_select_ui_text,limit=1] text set value {"text":"vp_hunger","color":"dark_green","bold":true}
execute as @e[tag=vp_game_select_ui_text,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon text_display ^1.5 ^2.3 ^ {Tags:["vp_game_select_ui_set","vp_game_select_ui_lore1"],CustomName:"vp_game_select_ui_lore1",billboard:"center"}
data modify entity @e[tag=vp_game_select_ui_lore1,limit=1] text set value {"text":""}
execute as @e[tag=vp_game_select_ui_lore1,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon text_display ^1.5 ^1.8 ^ {Tags:["vp_game_select_ui_set","vp_game_select_ui_lore2"],CustomName:"vp_game_select_ui_lore2",billboard:"center"}
data modify entity @e[tag=vp_game_select_ui_lore2,limit=1] text set value {"text":""}
execute as @e[tag=vp_game_select_ui_lore2,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon text_display ^1.5 ^1.3 ^ {Tags:["vp_game_select_ui_set","vp_game_select_ui_lore3"],CustomName:"vp_game_select_ui_lore3",billboard:"center"}
data modify entity @e[tag=vp_game_select_ui_lore3,limit=1] text set value {"text":""}
execute as @e[tag=vp_game_select_ui_lore3,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon text_display ^-1.3 ^1.7 ^ {Tags:["vp_game_select_ui_set","vp_game_select_ui_state"],CustomName:"vp_game_select_ui_state",billboard:"center"}
data modify entity @e[tag=vp_game_select_ui_state,limit=1] text set value {"text":"preparing","color":"gray","bold":true}
execute as @e[tag=vp_game_select_ui_state,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon item_display ^0.3 ^1.0 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_next"],CustomName:"vp_game_select_ui_next"}
item replace entity @e[tag=vp_game_select_ui_next,limit=1] container.0 with sandstone_wall
data modify entity @e[tag=vp_game_select_ui_next,limit=1] transformation.left_rotation set value [0.0f,0.7071f,0.0f,0.7071f]
data modify entity @e[tag=vp_game_select_ui_next,limit=1] transformation.scale set value [0.35f,0.35f,0.35f]
execute as @e[tag=vp_game_select_ui_next,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon interaction ^0.3 ^0.875 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_next_button"],CustomName:"next_page"}
data modify entity @e[tag=vp_game_select_ui_next_button,limit=1] height set value 0.35f
data modify entity @e[tag=vp_game_select_ui_next_button,limit=1] width set value 0.35f
execute as @e[tag=vp_game_select_ui_next_button,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon item_display ^-0.3 ^1.0 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_last"],CustomName:"vp_game_select_ui_last"}
item replace entity @e[tag=vp_game_select_ui_last,limit=1] container.0 with sandstone_wall
data modify entity @e[tag=vp_game_select_ui_last,limit=1] transformation.left_rotation set value [0.0f,0.7071f,0.0f,0.7071f]
data modify entity @e[tag=vp_game_select_ui_last,limit=1] transformation.scale set value [0.35f,0.35f,0.35f]
execute as @e[tag=vp_game_select_ui_last,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon interaction ^-0.3 ^0.875 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_last_button"],CustomName:"last_page"}
data modify entity @e[tag=vp_game_select_ui_last_button,limit=1] height set value 0.35f
data modify entity @e[tag=vp_game_select_ui_last_button,limit=1] width set value 0.35f
execute as @e[tag=vp_game_select_ui_last_button,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon item_display ^0.9 ^1.0 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_rand"],CustomName:"vp_game_select_ui_rand"}
item replace entity @e[tag=vp_game_select_ui_rand,limit=1] container.0 with command_block
#data modify entity @e[tag=vp_game_select_ui_rand,limit=1] transformation.left_rotation set value [0.0f,0.7071f,0.0f,0.7071f]
data modify entity @e[tag=vp_game_select_ui_rand,limit=1] transformation.scale set value [0.35f,0.35f,0.35f]
execute as @e[tag=vp_game_select_ui_rand,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon interaction ^0.9 ^0.875 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_rand_button"],CustomName:"rand_page"}
data modify entity @e[tag=vp_game_select_ui_rand_button,limit=1] height set value 0.35f
data modify entity @e[tag=vp_game_select_ui_rand_button,limit=1] width set value 0.35f
execute as @e[tag=vp_game_select_ui_rand_button,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon item_display ^-0.9 ^1.4 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_start"],CustomName:"vp_game_select_ui_start"}
item replace entity @e[tag=vp_game_select_ui_start,limit=1] container.0 with structure_block
#data modify entity @e[tag=vp_game_select_ui_start,limit=1] transformation.left_rotation set value [0.0f,0.7071f,0.0f,0.7071f]
data modify entity @e[tag=vp_game_select_ui_start,limit=1] transformation.scale set value [0.35f,0.35f,0.35f]
execute as @e[tag=vp_game_select_ui_start,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

summon interaction ^-0.9 ^1.275 ^0.5 {Tags:["vp_game_select_ui_set","vp_game_select_ui_start_button"],CustomName:"start_game"}
data modify entity @e[tag=vp_game_select_ui_start_button,limit=1] height set value 0.35f
data modify entity @e[tag=vp_game_select_ui_start_button,limit=1] width set value 0.35f
execute as @e[tag=vp_game_select_ui_start_button,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

execute as @e[tag=vp_game_select_ui_set] run data modify entity @s brightness set value {sky:15,block:15}