clear @s minecraft:bread{CAW_ID:"sandwich"} 1
scoreboard players remove @s has_sandwich 1
execute if score @s has_sandwich > @s sandwich_limit run function caw:limit/sandwich
