#vp_core:utils/chunk_area/_print_as
# 打印实例数据

tellraw @a ["_entity: ", "{"]
tellraw @a ["    ", "x_min: ", {"score":{"name":"@s", "objective":"x_min"}}, ","]
tellraw @a ["    ", "x_max: ", {"score":{"name":"@s", "objective":"x_max"}}, ","]
tellraw @a ["    ", "y_min: ", {"score":{"name":"@s", "objective":"y_min"}}, ","]
tellraw @a ["    ", "y_max: ", {"score":{"name":"@s", "objective":"y_max"}}, ","]
tellraw @a ["    ", "area_value: ", {"score":{"name":"@s", "objective":"area_value"}}, ","]
tellraw @a ["    ", "area_info: ", {"nbt":"data.area_info", "entity":"@s"}]
tellraw @a "}"