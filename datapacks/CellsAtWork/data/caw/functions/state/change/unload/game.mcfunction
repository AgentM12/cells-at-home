
scoreboard players reset * age
clear @a[tag=player]
effect clear @a[tag=player]
tag @a remove respawning

bossbar set caw:bc_target visible false
bossbar set caw:pg_target visible false

# kill all non-essential game objects
function caw:kill/variable_map_objects