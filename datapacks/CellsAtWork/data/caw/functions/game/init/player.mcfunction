clear @s
effect clear @s
effect give @s minecraft:saturation 1 100 true
gamemode adventure @s

#scoreboard players set @s score 0
scoreboard players set @s has_map 0
scoreboard players set @s has_weapon 0
scoreboard players set @s has_sandwich 0
scoreboard players set @s net_cooldown 0
scoreboard players set @s has_coffee 0
scoreboard players set @s has_oxygen 0
scoreboard players set @s has_poison 0
scoreboard players set @s has_net 0
scoreboard players set @s has_net_prev_t 0
scoreboard players set @s timeSinceDeath 12000

tag @s remove should_have_poison

tag @s add disallow_multiple_spawns
execute if entity @s[tag=pathogen] run function caw:game/spawn/pathogen
execute if entity @s[tag=blood_cell] run function caw:game/spawn/bloodcell
tag @s remove disallow_multiple_spawns
