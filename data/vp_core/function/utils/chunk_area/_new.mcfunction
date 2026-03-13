#vp_core:utils/chunk_area/_new
# 使用数据模板生成实体对象
# 输入数据模板storage vp_core:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["chunk_area", "result"],CustomName:"chunk_area"}
execute as @e[tag=result,limit=1] run function vp_core:utils/chunk_area/set
execute as @e[tag=result,limit=1] run function vp_core:utils/chunk_area/set_operation