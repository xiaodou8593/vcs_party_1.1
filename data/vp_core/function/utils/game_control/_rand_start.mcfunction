#vp_core:utils/game_control/_rand_start
# 随机选择一个游戏进入

execute as @a run function vp_core:player_types/joiner/_be

execute store result score temp_index int run random value 0..2147483640
execute store result score temp_len int run data get storage vp_core:class list_games
execute store result storage vp_core:io temp_index int 1 run scoreboard players operation temp_index int %= temp_len int
function vp_core:utils/game_control/rand_start_get with storage vp_core:io {}

tellraw @a ["",{"text":"selected game: ","color":"gray"},{"nbt":"control_plate.game_name","storage":"vp_core:io","interpret":true}]
function vp_core:utils/game_control/_enter_game
execute if score res int matches 0 run return run tellraw @a {"text":"不满足游戏进入条件！","color":"red"}
data modify storage vp_core:io temp set from storage vp_core:io control_plate.game_desc
execute if data storage vp_core:io temp[0] run function vp_core:utils/game_control/rand_start_desc