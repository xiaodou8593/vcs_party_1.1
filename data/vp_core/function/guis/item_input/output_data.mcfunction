#vp_core:guis/item_input/output_data
# vp_core:guis/item_input/main调用

tellraw @s ["",{"text":"[item_input]: ","color":"gray"}, {"text":"outputing items"}]
function iframe:player_space/_get
tellraw @a ["list_items: ",{"nbt":"player.list_items","storage":"iframe:io"}]
data modify storage iframe:io result set from storage iframe:io player.list_items