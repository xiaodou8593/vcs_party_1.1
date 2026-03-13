#vp_core:guis/item_input/main

data modify storage iframe:io sel set value {}
data modify storage iframe:io sel set from entity @s SelectedItem
data modify storage iframe:io inv set from entity @s Inventory

# 录入物品
data modify storage iframe:io input set from storage iframe:io inv
data remove storage iframe:io input[{components:{"minecraft:custom_data":{iframe_ui:1b}}}]
execute if data storage iframe:io input[0] run function vp_core:guis/item_input/input_data

# 检测GUI发生变动
scoreboard players set update_gui int 0
execute unless data storage iframe:io inv[{Slot:4b}].components."minecraft:custom_data"{button:4b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:5b}].components."minecraft:custom_data"{button:5b} run scoreboard players set update_gui int 1
execute if score update_gui int matches 1 run function vp_core:guis/item_input/items

# 重新开始输入
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:4b} \
	run function vp_core:guis/item_input/restart_input

# 导出数据按钮
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:5b} \
	run function vp_core:guis/item_input/output_data

# 退出GUI
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/item_input/exit
execute unless data storage iframe:io inv[{Slot:8b}].\
	components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/item_input/exit