clear @s minecraft:splash_potion{CAW_ID:"spawn_pathogen"} 1
scoreboard players remove @s has_poison 1
execute if score @s has_poison matches 2.. run function caw:limit/poison
