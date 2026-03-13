#vp_core:utils/game_select_ui/last_page
# vp_core:utils/game_select_ui/gen_funcs异步调用

function vp_core:utils/game_control/_last_plate
execute if score res int matches 0 at @s run return run playsound minecraft:block.chest.locked player @a ~ ~ ~ 1.0 2.0

execute at @s run playsound minecraft:block.lever.click player @a ~ ~ ~ 1.0 2.0