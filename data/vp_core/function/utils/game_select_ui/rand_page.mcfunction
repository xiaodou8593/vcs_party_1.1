#vp_core:utils/game_select_ui/rand_page
# vp_core:utils/game_select_ui/gen_funcs异步调用

execute unless data storage vp_core:io {control_state:"waiting"} at @s run return run playsound minecraft:block.chest.locked player @a ~ ~ ~ 1.0 2.0
execute store result score res int run random value 1..2147483640
execute store result score max int run data get storage vp_core:class list_games
scoreboard players operation res int %= max int
scoreboard players operation res int += max int
scoreboard players operation res int += max int
execute store result storage vp_core:io game_select_ui_pages int 1 run scoreboard players add res int 1
data modify storage vp_core:io game_select_ui_mod set value 10