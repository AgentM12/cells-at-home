execute as @e[type=minecraft:armor_stand,tag=coffee_refiller] at @s run data merge block ~ ~ ~ {LootTable:"caw:inventory/full_coffee"}
execute as @e[type=minecraft:armor_stand,tag=coffee_refiller] at @s run particle dust .75 .5 .25 2 ~ ~ ~ .5 1 .5 0 5 normal