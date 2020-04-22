# If the total number of cells is x
# Then the new delivery_count will be calcuated as
# $Exponential_Factor / 1000 * x^2 + $Linear_Factor * x + $Constant_Factor

# Count the Cells
scoreboard players set $Cell_Count delivery_count 0
execute as @e[tag=cell] run scoreboard players add $Cell_Count delivery_count 1

# Calculate the $Exponential_Value
scoreboard players operation $Exponential_Value delivery_count = $Cell_Count delivery_count
scoreboard players operation $Exponential_Value delivery_count *= $Cell_Count delivery_count
scoreboard players operation $Exponential_Value delivery_count *= $Exponential_Factor delivery_count
scoreboard players operation $Exponential_Value delivery_count /= $One_Thousand constant

# Calculate the $Linear_Value
scoreboard players operation $Linear_Value delivery_count = $Cell_Count delivery_count
scoreboard players operation $Linear_Value delivery_count *= $Linear_Factor delivery_count

# Calculate the new delivery_count
scoreboard players operation @s delivery_count = $Constant_Factor delivery_count
scoreboard players operation @s delivery_count += $Linear_Value delivery_count
scoreboard players operation @s delivery_count += $Exponential_Value delivery_count
