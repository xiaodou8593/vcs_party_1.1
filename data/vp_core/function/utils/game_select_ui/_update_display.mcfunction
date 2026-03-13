#vp_core:utils/game_select_ui/_update_display
# 读取信息，更新页面显示
# 需要传入世界实体为执行者

# 更新物品图标
data modify entity @e[tag=vp_game_select_ui,limit=1] item set from storage vp_core:class list_games[0].game_display.item_icon
data modify storage math:io xyzw set value [0.0f,0.0f,0.0f,0.0f]
scoreboard players operation theta int = vp_clock int
scoreboard players operation theta int %= 3600 int
execute store result entity @s Rotation[0] float -1.0 run scoreboard players get theta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score cos int run data get storage math:io xyz[2] 10000
execute store result score sin int run data get storage math:io xyz[0] 10000
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get cos int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get sin int
data modify entity @e[tag=vp_game_select_ui,limit=1] transformation.left_rotation set from storage math:io xyzw
data modify entity @e[tag=vp_game_select_ui,limit=1] start_interpolation set value 0

# 更新小游戏名称
data modify entity @e[tag=vp_game_select_ui_text,limit=1] text set from storage vp_core:class list_games[0].game_name

# 更新小游戏介绍
data modify storage vp_core:io temp_lore set from storage vp_core:class list_games[0].game_desc
data modify storage vp_core:io temp_lore append value [""]
data modify storage vp_core:io temp_lore append value [""]
data modify storage vp_core:io temp_lore append value [""]
data modify entity @e[tag=vp_game_select_ui_lore1,limit=1] text set from storage vp_core:io temp_lore[0]
data modify entity @e[tag=vp_game_select_ui_lore2,limit=1] text set from storage vp_core:io temp_lore[1]
data modify entity @e[tag=vp_game_select_ui_lore3,limit=1] text set from storage vp_core:io temp_lore[2]

# 更新小游戏进行状态
data modify entity @e[tag=vp_game_select_ui_state,limit=1] text.text set from storage vp_core:io control_state