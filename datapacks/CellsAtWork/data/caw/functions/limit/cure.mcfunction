clear @s minecraft:splash_potion{CAW_ID:"cure_pathogen"} 1
scoreboard players remove @s has_cure 1
execute if score @s has_cure > @s should_have_cure run function caw:limit/cure
