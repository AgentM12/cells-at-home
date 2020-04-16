clear @s minecraft:splash_potion{CAW_ID:"net"} 1
scoreboard players remove @s has_net 1
execute if score @s has_net matches 2.. run function caw:limit/net