clear @s minecraft:bread{CAW_ID:"sandwich"} 1
scoreboard players remove @s has_sandwich 1
execute if score @s has_sandwich matches 6.. run function caw:limit/sandwich