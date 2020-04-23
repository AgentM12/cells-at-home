# Summon a cell
function caw:summon/cell

# Increment the count
scoreboard players add $Summon_Count cell_count 1

# Recursive call
function caw:game/init/summon_cells
