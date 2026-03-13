#vp_core:guis/structure_saving/items

clear @s

# 填充GUI物品

item replace entity @s hotbar.2 with minecraft:clay_ball[\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:2b\
	},\
	minecraft:custom_name={\
		text:"restart saving",\
		color:"red"\
	},\
	minecraft:item_model="minecraft:structure_void",\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.3 with minecraft:clay_ball[\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:3b\
	},\
	minecraft:custom_name={\
		text:"next structure block",\
		color:"green"\
	},\
	minecraft:item_model="minecraft:structure_block",\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.4 with minecraft:clay_ball[\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:4b\
	},\
	minecraft:custom_name={\
		text:"teleport to structure block",\
		color:"aqua"\
	},\
	minecraft:item_model="minecraft:ender_eye",\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.8 with minecraft:clay_ball[\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:8b\
	},\
	minecraft:custom_name={\
		text:"exit",\
		color:"red"\
	},\
	minecraft:item_model="minecraft:barrier",\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]