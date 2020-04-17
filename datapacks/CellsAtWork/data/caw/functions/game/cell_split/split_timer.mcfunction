# Randomly checks if a villager will split
execute as @e[type=villager,tag=cell,scores={age=0,nutrients=1..}] at @s run function caw:game/cell_split/try_split