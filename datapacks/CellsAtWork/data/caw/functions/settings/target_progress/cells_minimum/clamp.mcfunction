# Clamp between 0 and 100
execute unless score $Cells_Minimum target_progress matches 0.. run scoreboard players set $Cells_Minimum target_progress 0
execute unless score $Cells_Minimum target_progress matches ..100 run scoreboard players set $Cells_Minimum target_progress 100

# Make sure it's less than the Start_Count
execute if score $Cells_Minimum target_progress >= $Start_Count cell_count run scoreboard players operation $Cells_Minimum target_progress = $Start_Count cell_count
execute if score $Cells_Minimum target_progress = $Start_Count cell_count run scoreboard players remove $Cells_Minimum target_progress 1
