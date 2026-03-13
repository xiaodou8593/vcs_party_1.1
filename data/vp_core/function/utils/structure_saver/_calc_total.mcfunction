#vp_core:utils/structure_saver/_calc_total
# 计算总共有多少个需要保存的结构
# 占用temp{<temp_h,int>}
# 输出<res,int>

execute store result score res int run data get storage vp_core:io field_size
execute store result score temp_h int run data get storage vp_core:io field_height
scoreboard players operation res int *= res int
scoreboard players operation res int *= temp_h int