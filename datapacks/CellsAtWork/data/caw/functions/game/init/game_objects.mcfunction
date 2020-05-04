# Summon cells
scoreboard players set $Summon_Count cell_count 0
function caw:game/init/summon_cells

# Initialize 1 target cell per red blood cell
execute as @a[tag=red_cell] at @s run function caw:game/target/assign_target
