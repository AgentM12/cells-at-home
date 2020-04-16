tag @s add self
execute as @e[type=villager,tag=target_cell] at @s run tag @s add old_target
execute as @e[type=villager,tag=cell,tag=!target_cell,sort=random,limit=1] at @s run function caw:game/target/add_target
execute as @e[type=villager,tag=old_target] at @s run function caw:game/target/remove_target
tag @s remove self