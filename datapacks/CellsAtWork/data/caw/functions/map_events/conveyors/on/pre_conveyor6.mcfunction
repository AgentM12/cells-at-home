setblock 268 63 -201 minecraft:honey_block
scoreboard players remove $C_SPAWN6 timer 1
execute if score $C_SPAWN6 timer matches ..0 positioned 268 64 -201 run function caw:summon/sandwich
execute if score $C_SPAWN6 timer matches ..0 run scoreboard players set $C_SPAWN6 timer 4