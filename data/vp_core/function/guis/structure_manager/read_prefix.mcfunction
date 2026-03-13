#vp_core:guis/structure_manager/read_prefix
# vp_core:guis/structure_manager/main调用

function iframe:player_space/_get
execute store result score temp_prefix int if data storage iframe:io inv[{Slot:3b}].components."minecraft:writable_book_content".pages[0].raw
execute if score temp_prefix int matches 1 run data modify storage vp_core:io structure_prefix set from storage iframe:io inv[{Slot:3b}].components."minecraft:writable_book_content".pages[0].raw
execute if score temp_prefix int matches 1 run title @s actionbar [{text:"structure prefix: ",color:"gray"},{nbt:"structure_prefix",storage:"vp_core:io",color:"dark_red"}]
execute if score temp_prefix int matches 1 run data modify storage iframe:io player.prefix_book set from storage iframe:io inv[{Slot:3b}]
execute if score temp_prefix int matches 0 run title @s actionbar ""
execute if score temp_prefix int matches 0 run data remove storage iframe:io player.prefix_book
function iframe:player_space/_store
