setblock 260 73 -194 minecraft:honey_block
scoreboard players remove $C_SPAWN2 timer 1
execute if score $C_SPAWN2 timer matches 0 positioned 260 74 -194 run function caw:summon/sandwich
execute if score $C_SPAWN2 timer matches ..0 run scoreboard players set $C_SPAWN2 timer 4