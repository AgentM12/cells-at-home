setblock 267 73 -194 minecraft:honey_block
scoreboard players remove $C_SPAWN1 timer 1
execute if score $C_SPAWN1 timer matches 0 positioned 267 74 -194 run function caw:summon/sandwich
execute if score $C_SPAWN1 timer matches ..0 run scoreboard players set $C_SPAWN1 timer 4