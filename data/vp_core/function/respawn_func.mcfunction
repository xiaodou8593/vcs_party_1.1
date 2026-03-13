#vp_core:respawn_func
# vp_core:player_death调用

function vp_core:player_space/_get
execute unless data storage vp_core:io result.respawn_func run data modify storage vp_core:io result.respawn_func set value "vp_core:utils/chunk_area/_void_func"
function vp_core:call_respawn_func with storage vp_core:io result
scoreboard players reset @s vp_death