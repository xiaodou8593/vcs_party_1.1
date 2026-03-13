#vp_core:utils/chunk_area/test/bite/start

# 生成测试程序实体
tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["test", "chunk_area_test", "result"], CustomName:{"text":"chunk_area_test"}}

execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 设置测试程序主函数和销毁函数
data modify storage marker_control:io result.tick_func set value "vp_core:utils/chunk_area/test/bite/main"
data modify storage marker_control:io result.del_func set value "vp_core:utils/chunk_area/test/bite/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

# 设置测试程序运行时间
scoreboard players set @e[tag=result,limit=1] killtime 20
scoreboard players set test int 0

function math:rgba/board/_rephi

# 生成测试区域
scoreboard players set x_min int -8
scoreboard players set x_max int 24
scoreboard players set y_min int -8
scoreboard players set y_max int 24
function vp_core:utils/chunk_area/_model
data modify storage vp_core:io input set from storage vp_core:io result
function vp_core:utils/chunk_area/_new
tag @e[tag=result,limit=1] add test
execute as @e[tag=result,limit=1] run function vp_core:utils/chunk_area/test/bite/set_color