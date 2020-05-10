scoreboard players set @s is_cured 0
effect clear @s minecraft:poison
effect give @s minecraft:instant_health 1 10

tag @s remove infected_cell
tag @s add cell
