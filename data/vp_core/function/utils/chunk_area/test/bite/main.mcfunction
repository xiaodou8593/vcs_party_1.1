#vp_core:utils/chunk_area/test/bite/main

# 渲染区域
execute as @e[tag=chunk_area,tag=test] run function vp_core:utils/chunk_area/test/bite/render_main

# 刷新测试时间
execute if score test int matches 1 run return fail
scoreboard players set @s killtime 10