#vp_core:utils/game_select_ui/start_game
# vp_core:utils/game_select_ui/gen_funcs异步调用

execute unless data storage vp_core:io {control_state:"waiting"} at @s run return run playsound minecraft:block.chest.locked player @a ~ ~ ~ 1.0 2.0
data modify storage vp_core:io control_plate set from storage vp_core:class list_games[0]
function vp_core:utils/game_control/_enter_game
execute if score res int matches 0 run tellraw @a {"text":"不满足游戏进入条件！","color":"red"}
execute if score res int matches 0 at @s run return run playsound minecraft:block.chest.locked player @a ~ ~ ~ 1.0 2.0
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1.0 1.0