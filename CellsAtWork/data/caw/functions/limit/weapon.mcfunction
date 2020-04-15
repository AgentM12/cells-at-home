clear @s minecraft:diamond_sword{CAW_ID:"weapon"} 1
scoreboard players remove @s has_weapon 1
execute if score @s has_weapon matches 2.. run function caw:limit/weapon