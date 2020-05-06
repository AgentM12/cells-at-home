# Cells that are infected can't reproduce

scoreboard players set @s is_poisoned 0
effect give @s minecraft:poison 1000000 4 false

tag @s add infected_cell
tag @s remove cell