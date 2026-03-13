#vp_core:utils/game_select_ui/gen_funcs
# vp_core:utils/game_select_ui/_gen调用

# 下一页按钮
execute as @e[tag=vp_game_select_ui_next_button,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.irc_func set value "vp_core:utils/game_select_ui/next_page"
data modify storage marker_control:io result.ilc_func set value "vp_core:utils/game_select_ui/next_page"
execute as @e[tag=vp_game_select_ui_next_button,limit=1] run function marker_control:data/_store

# 上一页按钮
execute as @e[tag=vp_game_select_ui_last_button,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.irc_func set value "vp_core:utils/game_select_ui/last_page"
data modify storage marker_control:io result.ilc_func set value "vp_core:utils/game_select_ui/last_page"
execute as @e[tag=vp_game_select_ui_last_button,limit=1] run function marker_control:data/_store

# 随机页按钮
execute as @e[tag=vp_game_select_ui_rand_button,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.irc_func set value "vp_core:utils/game_select_ui/rand_page"
data modify storage marker_control:io result.ilc_func set value "vp_core:utils/game_select_ui/rand_page"
execute as @e[tag=vp_game_select_ui_rand_button,limit=1] run function marker_control:data/_store

# 进入游戏按钮
execute as @e[tag=vp_game_select_ui_start_button,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.irc_func set value "vp_core:utils/game_select_ui/start_game"
data modify storage marker_control:io result.ilc_func set value "vp_core:utils/game_select_ui/start_game"
execute as @e[tag=vp_game_select_ui_start_button,limit=1] run function marker_control:data/_store