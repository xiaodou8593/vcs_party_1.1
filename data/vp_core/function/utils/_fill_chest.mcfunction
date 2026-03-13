#vp_core:utils/_fill_chest
# 使用物品列表填充箱子
# 输入storage vp_core:io input
# 输入填充数量: <inp,int>
# 输出storage vp_core:io result

# 编辑物品数量
execute store result score loop int run data get storage vp_core:io input
execute if score loop int matches 1.. run function vp_core:utils/fill_chest_count

data modify storage vp_core:io temp_slots set value [\
	0b,1b,2b,3b,4b,5b,6b,7b,8b,\
	9b,10b,11b,12b,13b,14b,15b,16b,\
	17b,18b,20b,21b,22b,23b,24b,25b,26b\
]
execute store result score loop int run data get storage vp_core:io input
scoreboard players operation loop int > 27 int
execute if score loop int matches 1.. run function vp_core:utils/fill_chest_loop
execute as @e[tag=stmp,sort=random] run function vp_core:utils/fill_chest_get
execute as @e[tag=stmp,sort=random] run function vp_core:utils/fill_chest_slot
data modify storage vp_core:io result set value []
execute store result storage vp_core:io temp_cnt int 1 run scoreboard players get inp int
function vp_core:utils/fill_chest_append with storage vp_core:io {}
kill @e[tag=stmp]