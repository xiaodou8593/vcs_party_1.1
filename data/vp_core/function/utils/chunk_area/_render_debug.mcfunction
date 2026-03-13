#vp_core:utils/chunk_area/_render_debug
# 渲染区块区域
# 占用storage math:io xyz
# 占用sstemp
# 占用math:visual_plane
# 占用storage marker_control:io result
# 输入执行位置
# 输入<duration,int>
# 输入math:rgba{<r,int>,<g,int>,<b,int>,<a,int>}
# 输出entity @e[tag=result]
# 需要传入世界实体
# 需要安装math3.1_gelib

# 计算scale
scoreboard players operation scale_u int = x_max int
scoreboard players operation scale_u int -= x_min int
scoreboard players operation scale_u int *= 5000 int
scoreboard players operation scale_v int = y_max int
scoreboard players operation scale_v int -= y_min int
scoreboard players operation scale_v int *= 5000 int

# 计算center
tp @s ~ ~ ~
execute store result score y int run data get entity @s Pos[1] 10000
scoreboard players operation x int = x_min int
scoreboard players operation x int *= 10000 int
scoreboard players operation x int += scale_u int
scoreboard players operation z int = y_min int
scoreboard players operation z int *= 10000 int
scoreboard players operation z int += scale_v int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int
data modify entity @s Pos set from storage math:io xyz

scoreboard players operation scale_u int *= 2 int
scoreboard players operation scale_v int *= 2 int

# 设置norm_vec
scoreboard players set nvec_x int 0
scoreboard players set nvec_y int 10000
scoreboard players set nvec_z int 0

scoreboard players operation scale_u int >< scale_v int
scoreboard players remove scale_u int 1000
scoreboard players remove scale_v int 1000
execute at @s run function math:visual_plane/_gen
scoreboard players operation @e[tag=result,limit=1] killtime = duration int
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.del_func set value "math:visual_plane/_del"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_todel

# 区块安全
tp @s 0 0 0