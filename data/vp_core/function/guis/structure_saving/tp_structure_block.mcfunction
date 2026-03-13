#vp_core:guis/structure_saving/tp_structure_block
# vp_core:guis/structure_saving/main调用

function vp_core:utils/structure_saver/_position_structure_block
execute positioned as @s positioned ~0.5 ~0.5 ~0.5 run tp @a[tag=tmp,limit=1] ^ ^-1.62 ^-1.5

# 区块安全
tp @s 0 0 0