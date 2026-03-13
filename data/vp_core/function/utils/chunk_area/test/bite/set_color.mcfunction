#vp_core:utils/chunk_area/test/bite/set_color

function marker_control:data/_get
data modify storage marker_control:io result.rgba_plate set from storage math:io rgba_board[0]
data modify storage marker_control:io result.rgba_plate[3] set value 125
function marker_control:data/_store
function math:rgba/board/_next