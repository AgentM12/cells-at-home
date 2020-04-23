clear @s minecraft:barrel{CAW_ID:"oxygen"} 1
scoreboard players remove @s has_oxygen 1
execute if score @s has_oxygen > @s oxygen_limit run function caw:limit/oxygen
