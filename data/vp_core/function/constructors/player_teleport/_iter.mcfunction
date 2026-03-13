#vp_core:constructors/player_teleport/_iter
# 临时对象运行一次构造迭代
# 输出entity @e[tag=vp_instance]

# 获取传送玩家
tag @a[tag=vp_teleporting,limit=1] add tmp
# 访问位置
data modify entity @s Pos set from storage vp_core:io tp_points[0]
execute at @s run tp @a[tag=tmp,limit=1] ~ ~ ~
# 区块安全
tp @s 0 0 0
# 取消玩家传送标记
tag @a[tag=tmp,limit=1] remove vp_teleporting
tag @a[tag=tmp,limit=1] remove tmp

# 列表转动
data modify storage vp_core:io tp_points append from storage vp_core:io tp_points[0]
data remove storage vp_core:io tp_points[0]

# 计算构造进度
execute store result score vp_progress int if entity @a[tag=vp_gamer,tag=!vp_teleporting]
execute store result score temp_cnt int if entity @a[tag=vp_gamer]
scoreboard players operation temp_cnt int > 1 int
scoreboard players operation vp_progress int *= 100 int
scoreboard players operation vp_progress int /= temp_cnt int
scoreboard players operation vp_progress int > 1 int