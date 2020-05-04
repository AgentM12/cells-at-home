# If the total number of infected cells is x
# Then the new poison_count will be calcuated as
# $Exponential_Factor / 1000 * x^2 + $Linear_Factor / 10 * x + $Constant_Factor

# Count the Cells
execute store result score $Cell_Count poison_count if entity @e[type=villager,tag=infected_cell]

# Calculate the $Exponential_Value
scoreboard players operation $Exponential_Value poison_count = $Cell_Count poison_count
scoreboard players operation $Exponential_Value poison_count *= $Cell_Count poison_count
scoreboard players operation $Exponential_Value poison_count *= $Exponential_Factor poison_count
scoreboard players operation $Exponential_Value poison_count /= $One_Thousand constant

# Calculate the $Linear_Value
scoreboard players operation $Linear_Value poison_count = $Cell_Count poison_count
scoreboard players operation $Linear_Value poison_count *= $Linear_Factor poison_count
scoreboard players operation $Linear_Value poison_count /= $Ten constant

# Calculate the new delivery_count
scoreboard players operation $poison_count poison_count = $Constant_Factor poison_count
scoreboard players operation $poison_count poison_count += $Linear_Value poison_count
scoreboard players operation $poison_count poison_count += $Exponential_Value poison_count

# Make sure the delivery_count is at least $Minimum
scoreboard players operation $poison_count poison_count > $Minimum poison_count
