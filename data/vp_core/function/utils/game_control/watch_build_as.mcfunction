#vp_core:utils/game_control/watch_build_as
# vp_core:utils/game_control/_enter_game调用

$function $(game_prefix)_get_tp_points
$data modify storage vp_core:io temp set from storage $(game_namespace):io result
function vp_core:utils/game_control/watch_build_get