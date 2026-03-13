#vp_core:death_func
# vp_core:player_death调用

function vp_core:player_space/_get
execute unless data storage vp_core:io result.death_func run data modify storage vp_core:io result.death_func set value "vp_core:utils/chunk_area/_void_func"
function vp_core:call_death_func with storage vp_core:io result
scoreboard players add @s vp_death 1