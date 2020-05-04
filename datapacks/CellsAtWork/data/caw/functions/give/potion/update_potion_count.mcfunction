# If the total number of infected cells is x
# Then the new potion_count will be calcuated as
# $Exponential_Factor / 1000 * x^2 + $Linear_Factor / 10 * x + $Constant_Factor

# Count the Cells
execute store result score $Cell_Count potion_count if entity @e[type=villager,tag=infected_cell]

# Calculate the $Exponential_Value
scoreboard players operation $Exponential_Value potion_count = $Cell_Count potion_count
scoreboard players operation $Exponential_Value potion_count *= $Cell_Count potion_count
scoreboard players operation $Exponential_Value potion_count *= $Exponential_Factor potion_count
scoreboard players operation $Exponential_Value potion_count /= $One_Thousand constant

# Calculate the $Linear_Value
scoreboard players operation $Linear_Value potion_count = $Cell_Count potion_count
scoreboard players operation $Linear_Value potion_count *= $Linear_Factor potion_count
scoreboard players operation $Linear_Value potion_count /= $Ten constant

# Calculate the new delivery_count
scoreboard players operation $Potion_Count potion_count = $Constant_Factor potion_count
scoreboard players operation $Potion_Count potion_count += $Linear_Value potion_count
scoreboard players operation $Potion_Count potion_count += $Exponential_Value potion_count

# Make sure the delivery_count is at least $Minimum
scoreboard players operation $Potion_Count potion_count > $Minimum potion_count
