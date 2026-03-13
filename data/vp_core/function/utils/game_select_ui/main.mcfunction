#vp_core:utils/game_select_ui/main
# vp_core:utils/game_select_ui/tick调用
# 实体对象主程序

execute store result score temp_modular int run data get storage vp_core:io game_select_ui_mod
scoreboard players operation temp_modular int /= 10 int
scoreboard players operation temp_modular int < 10 int
scoreboard players operation temp_mod int = vp_clock int
scoreboard players operation temp_mod int %= temp_modular int
execute if score temp_mod int matches 0 unless data storage vp_core:io {game_select_ui_pages:0} run function vp_core:utils/game_select_ui/pages
execute as 0-0-0-0-0 run function vp_core:utils/game_select_ui/_update_display