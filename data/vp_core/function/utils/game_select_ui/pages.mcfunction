#vp_core:utils/game_select_ui/pages
# vp_core:utils/game_select_ui/main调用

execute store result score temp_cnt int run data get storage vp_core:io game_select_ui_pages
scoreboard players remove temp_cnt int 1
execute store result storage vp_core:io game_select_ui_pages int 1 run scoreboard players operation temp_cnt int > 0 int

execute store result score temp_modular int run data get storage vp_core:io game_select_ui_mod
execute store result storage vp_core:io game_select_ui_mod int 1 run scoreboard players add temp_modular int 1

execute as @e[tag=vp_game_select_ui_next_button,limit=1] run function vp_core:utils/game_select_ui/next_page