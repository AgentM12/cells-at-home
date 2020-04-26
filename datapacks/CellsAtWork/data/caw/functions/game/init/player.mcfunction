clear @s
effect clear @s
effect give @s minecraft:saturation 1 100 true
gamemode adventure @s

scoreboard players set @s score 0
scoreboard players set @s has_map 0
scoreboard players set @s has_weapon 0
scoreboard players set @s has_sandwich 0
scoreboard players set @s has_net 0
scoreboard players set @s timeSinceDeath 12000

function caw:game/spread_around_origin