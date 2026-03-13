#vp_core:constructors/player_setup/_iter
# 临时对象运行一次构造迭代
# 输出entity @e[tag=vp_instance]

execute as @a[tag=vp_joiner,limit=1] run function vp_core:constructors/player_setup/set_this with storage vp_core:io {}

# 计算设置进度
execute store result score temp_cnt_j int if entity @a[tag=vp_joiner]
execute store result score temp_cnt_g int if entity @a[tag=vp_gamer]
scoreboard players operation temp_cnt int = temp_cnt_j int
scoreboard players operation temp_cnt int += temp_cnt_g int
scoreboard players operation temp_cnt int > 1 int
scoreboard players operation vp_progress int = temp_cnt_g int
scoreboard players operation vp_progress int *= 100 int
scoreboard players operation vp_progress int /= temp_cnt int
scoreboard players operation vp_progress int > 1 int