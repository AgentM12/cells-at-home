clear @s minecraft:potion{CAW_ID:"coffee"} 1
scoreboard players remove @s has_coffee 1
execute if score @s has_coffee matches 2.. run function caw:limit/coffee
