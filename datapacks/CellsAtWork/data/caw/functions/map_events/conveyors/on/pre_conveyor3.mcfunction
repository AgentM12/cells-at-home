setblock 268 73 -205 minecraft:honey_block
scoreboard players remove $C_SPAWN3 timer 1
execute if score $C_SPAWN3 timer matches 0 positioned 268 74 -205 run function caw:summon/sandwich
execute if score $C_SPAWN3 timer matches ..0 run scoreboard players set $C_SPAWN3 timer 4