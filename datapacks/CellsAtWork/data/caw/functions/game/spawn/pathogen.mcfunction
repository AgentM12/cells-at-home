# Teleports players to the spawn location (if disallow_multiple_spawns is set, marks targets that are used.)
tag @e[type=armor_stand,tag=sl_pathogen_marker,tag=!sl_used,sort=random,limit=1] add sl_target
execute if entity @s[tag=disallow_multiple_spawns] run tag @e[type=armor_stand,tag=sl_target] add sl_used
tp @s @e[type=armor_stand,tag=sl_target,limit=1]
tag @e[type=armor_stand,tag=sl_target] remove sl_target