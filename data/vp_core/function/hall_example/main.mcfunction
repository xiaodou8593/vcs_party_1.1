#vp_core:hall_example/main
# 大厅主程序

# 调用父类主程序
function vp_core:hall/main

# 子类主程序
execute positioned 196 -57 48 if entity @a[distance=..30] run function vp_core:utils/game_select_ui/main