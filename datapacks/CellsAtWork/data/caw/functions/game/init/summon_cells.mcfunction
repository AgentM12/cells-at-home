# Summon a cell, if we are not at the $Start_Count yet
execute if score $Summon_Count cell_count < $Start_Count cell_count run function caw:game/init/summon_cell
