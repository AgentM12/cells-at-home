# Randomly checks if a villager will split
execute as @e[type=villager,tag=cell,tag=!target_cell,scores={age=0}] at @s if score @s nutrients >= $Required nutrients run function caw:game/cell_split/try_split
