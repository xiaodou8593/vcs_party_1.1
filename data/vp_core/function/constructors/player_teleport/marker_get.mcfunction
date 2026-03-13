#vp_core:constructors/player_teleport/marker_get
# vp_core:constructors/player_teleport/_start调用

data modify entity @s data.temp_data set from storage vp_core:io tp_points[0]
data remove storage vp_core:io tp_points[0]