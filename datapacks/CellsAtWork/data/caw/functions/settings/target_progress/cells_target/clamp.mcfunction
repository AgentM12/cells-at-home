# Clamp between 0 and 100
execute unless score $Cells_Target target_progress matches 1.. run scoreboard players set $Cells_Target target_progress 1
execute unless score $Cells_Target target_progress matches ..100 run scoreboard players set $Cells_Target target_progress 100

# Make sure it's higher than the Start_Count
execute if score $Cells_Target target_progress <= $Start_Count cell_count run scoreboard players operation $Cells_Target target_progress = $Start_Count cell_count
execute if score $Cells_Target target_progress = $Start_Count cell_count run scoreboard players add $Cells_Target target_progress 1
