#vp_core:guis/structure_saving/auto_next
# vp_core:guis/structure_saving/main调用

function vp_core:utils/structure_saver/_position_structure_block

function iframe:player_space/_get
execute at @s if block ~ ~ ~ structure_block run data modify storage iframe:io player.auto_next_delay set value 0
execute store result score temp_d int run data get storage iframe:io player.auto_next_delay
execute at @s if block ~ ~ ~ air store result storage iframe:io player.auto_next_delay int 1 run scoreboard players add temp_d int 1
function iframe:player_space/_store

function vp_core:utils/structure_saver/_calc_total
scoreboard players set sres int 0
execute at @s if block ~ ~ ~ air if score temp_index int < res int run scoreboard players set sres int 1
execute at @s if block ~ ~ ~ air if score temp_index int = res int run scoreboard players set sres int 2
execute if score temp_d int matches 5 if score sres int matches 1 as @a[tag=tmp,limit=1] run function vp_core:guis/structure_saving/next_structure_block
execute if score temp_d int matches 5 if score sres int matches 2 as @a[tag=tmp,limit=1] run function vp_core:guis/structure_saving/clear_structure_block

# 区块安全
tp @s 0 0 0