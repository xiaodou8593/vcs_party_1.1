#vp_core:player_death
# vp_core:tick调用

execute if score @s vp_death matches 1 run function vp_core:death_func

tag @s add tmp
execute store result score res int if entity @e[tag=tmp,limit=1]
tag @s remove tmp
execute if score res int matches 1 run function vp_core:respawn_func