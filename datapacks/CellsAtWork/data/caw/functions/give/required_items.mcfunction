execute if entity @s[tag=!red_cell,scores={has_weapon=0}] run function caw:give/weapon
execute if entity @s[tag=pathogen,scores={has_net=0,net_cooldown=..0}] run function caw:give/net

execute if entity @s[tag=red_cell,scores={has_map=0}] run function caw:give/map