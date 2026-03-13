#vp_core:utils/game_control/rand_start_desc
# vp_core:utils/game_control/_rand_start调用

tellraw @a {"nbt":"temp[0]","storage":"vp_core:io","interpret":true}

data remove storage vp_core:io temp[0]
execute if data storage vp_core:io temp[0] run function vp_core:utils/game_control/rand_start_desc