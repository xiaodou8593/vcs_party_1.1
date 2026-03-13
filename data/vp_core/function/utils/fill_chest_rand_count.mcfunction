#vp_core:utils/fill_chest_rand_count
# vp_core:utils/fill_chest_count调用

execute store result score temp_min int run data get storage vp_core:io input[0].count.min
execute store result score temp_max int run data get storage vp_core:io input[0].count.max
execute unless data storage vp_core:io input[0].count.max run scoreboard players set temp_max int 64
scoreboard players operation temp_max int -= temp_min int
scoreboard players add temp_max int 1
execute store result score temp_cnt int run random value 0..2147483640
scoreboard players operation temp_cnt int %= temp_max int
execute store result storage vp_core:io input[0].count int 1 run scoreboard players operation temp_cnt int += temp_min int