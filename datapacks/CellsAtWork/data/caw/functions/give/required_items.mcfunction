execute if entity @s[tag=!red_cell,scores={has_weapon=0}] run function caw:give/weapon
execute if entity @s[tag=pathogen,scores={has_net=0,net_cooldown=..0}] run function caw:give/net

execute if entity @s[tag=pathogen,tag=should_have_poison,scores={has_poison=0}] run function caw:give/spawn_pathogen
execute if entity @s[tag=pathogen,tag=!should_have_poison,scores={has_poison=0}] run function caw:give/poison/try_to_trade
execute if entity @s[tag=white_cell] if score @s should_have_cure > @s has_cure run function caw:give/cure_pathogen

#execute if entity @s[tag=blood_cell,scores={has_map=0}] run function caw:give/map
