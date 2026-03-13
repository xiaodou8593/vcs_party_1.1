#vp_core:utils/chunk_area/_bite_kill
# 用临时对象拆解输入的区域实例，咬掉交集，保留剩下的部分（清除实例自身）
# 占用storage vp_core:io input
# 占用temp{<temp_l,int>,<temp_s,int>}
# 输入chunk_area实例作为执行者
# 输出entity @e[tag=result]

function vp_core:utils/chunk_area/_bite
kill @s