#vp_core:utils/chunk_area/test/bite/render_main

function vp_core:utils/chunk_area/_get
function marker_control:data/_get
data modify storage math:io input set from storage marker_control:io result.rgba_plate
function math:rgba/_proj
scoreboard players set duration int 5
execute as @e[tag=math_marker,limit=1] positioned 0.0 -59.99 0.0 run function vp_core:utils/chunk_area/_render_debug