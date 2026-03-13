#vp_core:utils/game_control/building
# vp_core:utils/game_control/main调用

# 显示构造进度
title @a times 0 6 0
title @a title ""
execute as @e[tag=vp_constructor,tag=running,limit=1] run title @a subtitle [{"text":"","color":"gray"},"[",{"selector":"@s"},"]: ", {"score":{name:"@s","objective":"vp_progress"}}, "%"]

execute unless data storage vp_core:io {game_state:"prepared"} run return fail
# 构造完成
data modify storage vp_core:io control_state set value "running"