tag @s add self
execute as @e[type=villager,tag=cell,tag=!target_cell,sort=random,limit=1] at @s run function caw:game/target/add_target
tag @s remove new_target_found_for_player
tag @s remove self