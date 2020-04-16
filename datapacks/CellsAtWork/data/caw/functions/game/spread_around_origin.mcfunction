# Spreads until no longer in contact with illegal position (structure void)
execute at @e[type=minecraft:armor_stand,tag=game_origin,limit=1] run spreadplayers ~ ~ 8 63 false @s
execute as @s at @s if block ~ ~ ~ minecraft:structure_void run function caw:game/spread_around_origin
execute as @s at @s unless block ~ ~ ~ minecraft:structure_void if block ~ ~-1 ~ minecraft:structure_void run function caw:game/spread_around_origin