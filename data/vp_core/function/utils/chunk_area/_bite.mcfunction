#vp_core:utils/chunk_area/_bite
# 用临时对象拆解输入的区域实例，咬掉交集，保留剩下的部分
# 占用storage vp_core:io input
# 占用temp{<temp_l,int>,<temp_s,int>}
# 输入chunk_area实例作为执行者
# 输出entity @e[tag=result]

data modify storage vp_core:io input set value {x_min:0, x_max:0, y_min:0, y_max:0, area_value:0, area_info:{}}

# 尝试生成不同区域
execute store result storage vp_core:io input.x_min int 1 run scoreboard players get @s x_min
execute store result storage vp_core:io input.x_max int 1 run scoreboard players get @s x_max
execute store result storage vp_core:io input.y_min int 1 run scoreboard players get @s y_min
execute store result storage vp_core:io input.y_max int 1 run scoreboard players get y_min int
scoreboard players operation temp_l int = @s x_max
scoreboard players operation temp_l int -= @s x_min
scoreboard players operation temp_s int = y_min int
scoreboard players operation temp_s int -= @s y_min
execute store result storage vp_core:io input.area_value int 1 run scoreboard players operation temp_s int *= temp_l int
execute if score temp_s int matches 1.. run function vp_core:utils/chunk_area/_new
tag @e[tag=result,limit=1] add tmp

execute store result storage vp_core:io input.y_min int 1 run scoreboard players get y_max int
execute store result storage vp_core:io input.y_max int 1 run scoreboard players get @s y_max
scoreboard players operation temp_s int = @s y_max
scoreboard players operation temp_s int -= y_max int
execute store result storage vp_core:io input.area_value int 1 run scoreboard players operation temp_s int *= temp_l int
execute if score temp_s int matches 1.. run function vp_core:utils/chunk_area/_new
tag @e[tag=result,limit=1] add tmp

execute store result storage vp_core:io input.x_min int 1 run scoreboard players get @s x_min
execute store result storage vp_core:io input.x_max int 1 run scoreboard players get x_min int
execute store result storage vp_core:io input.y_min int 1 run scoreboard players get y_min int
execute store result storage vp_core:io input.y_max int 1 run scoreboard players get y_max int
scoreboard players operation temp_l int = y_max int
scoreboard players operation temp_l int -= y_min int
scoreboard players operation temp_s int = x_min int
scoreboard players operation temp_s int -= @s x_min
execute store result storage vp_core:io input.area_value int 1 run scoreboard players operation temp_s int *= temp_l int
execute if score temp_s int matches 1.. run function vp_core:utils/chunk_area/_new
tag @e[tag=result,limit=1] add tmp

execute store result storage vp_core:io input.x_min int 1 run scoreboard players get x_max int
execute store result storage vp_core:io input.x_max int 1 run scoreboard players get @s x_max
scoreboard players operation temp_s int = @s x_max
scoreboard players operation temp_s int -= x_max int
execute store result storage vp_core:io input.area_value int 1 run scoreboard players operation temp_s int *= temp_l int
execute if score temp_s int matches 1.. run function vp_core:utils/chunk_area/_new
tag @e[tag=tmp] add result
tag @e[tag=tmp] remove tmp