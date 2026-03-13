#vp_core:guis/item_input/items

clear @s

item replace entity @s hotbar.4 with minecraft:music_disc_cat[\
	minecraft:custom_name={\
		text:"restart input",\
		color:"green"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:4b\
	},\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.5 with minecraft:iron_pickaxe[\
	minecraft:custom_name={\
		text:"output items",\
		color:"gold"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:5b\
	},\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

# 填充GUI物品
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