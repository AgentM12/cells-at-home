
clear @a[tag=player]
effect clear @a[tag=player]
tag @a remove respawning

bossbar set caw:bc_target visible false
bossbar set caw:pg_target visible false

# kill all non-essential game objects
execute as @e[type=villager,tag=!imp] at @s run tp @s ~ -100 ~
kill @e[type=item,tag=!imp]