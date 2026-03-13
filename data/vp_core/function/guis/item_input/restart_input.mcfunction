#vp_core:guis/item_input/restart_input
# vp_core:guis/item_input/main调用

tellraw @s ["",{"text":"[item_input]: ","color":"gray"}, {"text":"restart inputing"}]
function iframe:player_space/_get
data modify storage iframe:io player.list_items set value []
function iframe:player_space/_store