#vp_core:utils/chunk_area/_print
# 打印临时对象数据

tellraw @a ["_this: ", "{"]
tellraw @a ["    ", "x_min: ", {"score":{"name":"x_min", "objective":"int"}}, ","]
tellraw @a ["    ", "x_max: ", {"score":{"name":"x_max", "objective":"int"}}, ","]
tellraw @a ["    ", "y_min: ", {"score":{"name":"y_min", "objective":"int"}}, ","]
tellraw @a ["    ", "y_max: ", {"score":{"name":"y_max", "objective":"int"}}, ","]
tellraw @a ["    ", "area_value: ", {"score":{"name":"area_value", "objective":"int"}}, ","]
tellraw @a ["    ", "area_info: ", {"nbt":"area_info", "storage":"vp_core:io"}]
tellraw @a "}"