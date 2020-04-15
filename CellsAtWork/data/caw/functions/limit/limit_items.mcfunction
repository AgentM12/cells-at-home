execute store result score @s has_sandwich run clear @s bread{CAW_ID:"sandwich"} 0
execute store result score @s has_oxygen run clear @s barrel{CAW_ID:"oxygen"} 0
execute store result score @s has_weapon run clear @s diamond_sword{CAW_ID:"weapon"} 0
execute store result score @s has_net run clear @s minecraft:splash_potion{CAW_ID:"net"} 0
execute store result score @s has_map run clear @s minecraft:filled_map{CAW_ID:"map"} 0

execute if score @s has_sandwich matches 6.. run function caw:limit/sandwich
execute if score @s has_oxgen matches 6.. run function caw:limit/oxygen
execute if score @s has_weapon matches 2.. run function caw:limit/weapon
execute if score @s has_net matches 2.. run function caw:limit/net
execute if score @s has_map matches 2.. run function caw:limit/map