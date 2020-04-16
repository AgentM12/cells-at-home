clear @s minecraft:barrel{CAW_ID:"oxygen"} 1
scoreboard players remove @s has_oxygen 1
execute if score @s has_oxygen matches 6.. run function caw:limit/oxygen