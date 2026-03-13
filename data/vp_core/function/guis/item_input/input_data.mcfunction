#vp_core:guis/item_input/input_data
# vp_core:guis/item_input/main调用

# 清洗槽位信息
data remove storage iframe:io input[].Slot
# 加入列表
function iframe:player_space/_get
data modify storage iframe:io player.list_items append from storage iframe:io input[]
function iframe:player_space/_store

execute store result score temp_cnt int run data get storage iframe:io input
execute if score temp_cnt int matches 1 run tellraw @s ["",{"text":"[item_input]: ","color":"gray"}, {"text":"input "}, {"score":{"name":"temp_cnt","objective":"int"}}, {"text":" item"}]
execute if score temp_cnt int matches 2.. run tellraw @s ["",{"text":"[item_input]: ","color":"gray"}, {"text":"input "}, {"score":{"name":"temp_cnt","objective":"int"}}, {"text":" items"}]
clear @s *[!minecraft:custom_data~{iframe_ui:1b}]