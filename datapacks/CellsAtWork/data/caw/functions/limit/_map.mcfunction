clear @s minecraft:filled_map{CAW_ID:"map"} 1
scoreboard players remove @s has_map 1
#execute if score @s has_map matches 2.. run function caw:limit/map