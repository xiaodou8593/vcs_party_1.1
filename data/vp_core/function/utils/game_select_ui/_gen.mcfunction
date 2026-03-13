#vp_core:utils/game_select_ui/_gen
# 生成游戏选择ui实例，并清除旧有实例
# 输入执行位置
# 输入执行朝向

# 清除旧有实例
function vp_core:utils/game_select_ui/_del

# 加载实例实体
function vp_core:utils/game_select_ui/gen_entity

# 加载回调函数
function vp_core:utils/game_select_ui/gen_funcs

# 更新实例显示
execute as 0-0-0-0-0 run function vp_core:utils/game_select_ui/_update_display