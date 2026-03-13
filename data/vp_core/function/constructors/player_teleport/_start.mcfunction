#vp_core:constructors/player_teleport/_start
# 临时对象开始构造迭代

# 列表乱序
execute store result score loop int run data get storage vp_core:io tp_points
execute if score loop int matches 1.. run function vp_core:constructors/player_teleport/marker_pool
execute as @e[tag=tmp] run function vp_core:constructors/player_teleport/marker_get
execute as @e[tag=tmp,sort=random] run data modify storage vp_core:io tp_points append from entity @s data.temp_data
kill @e[tag=tmp]

# 添加任务标签
tag @a[tag=vp_gamer] add vp_teleporting

scoreboard players set vp_progress int 1