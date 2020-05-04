setblock 283 73 -207 minecraft:honey_block
scoreboard players remove $C_SPAWN4 timer 1
execute if score $C_SPAWN4 timer matches 0 positioned 283 74 -207 run function caw:summon/sandwich
execute if score $C_SPAWN4 timer matches ..0 run scoreboard players set $C_SPAWN4 timer 2