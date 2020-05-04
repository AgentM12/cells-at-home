setblock 256 63 -205 minecraft:honey_block
scoreboard players remove $C_SPAWN5 timer 1
execute if score $C_SPAWN5 timer matches 4 positioned 256 64 -205 run function caw:summon/sandwich
execute if score $C_SPAWN5 timer matches ..0 run scoreboard players set $C_SPAWN5 timer 8