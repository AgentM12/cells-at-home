# Summon a cell at a random spawn location
execute as @e[type=armor_stand,tag=sl_cell_marker,sort=random,limit=1] at @s run function caw:summon/cell

# Increment the count
scoreboard players add $Summon_Count cell_count 1

# Recursive call
function caw:game/init/summon_cells
