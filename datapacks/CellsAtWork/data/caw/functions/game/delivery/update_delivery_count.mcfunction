# If the total number of cells is x
# Then the new delivery_count will be calcuated as
# $Exponential_Factor / 1000 * x^2 + $Linear_Factor / 10 * x + $Constant_Factor

# Count the Cells
execute store result score $Cell_Count delivery_count if entity @e[type=villager,tag=cell]

# Calculate the $Exponential_Value
scoreboard players operation $Exponential_Value delivery_count = $Cell_Count delivery_count
scoreboard players operation $Exponential_Value delivery_count *= $Cell_Count delivery_count
scoreboard players operation $Exponential_Value delivery_count *= $Exponential_Factor delivery_count
scoreboard players operation $Exponential_Value delivery_count /= $One_Thousand constant

# Calculate the $Linear_Value
scoreboard players operation $Linear_Value delivery_count = $Cell_Count delivery_count
scoreboard players operation $Linear_Value delivery_count *= $Linear_Factor delivery_count
scoreboard players operation $Linear_Value delivery_count /= $Ten constant

# Calculate the new delivery_count
scoreboard players operation @s delivery_count = $Constant_Factor delivery_count
scoreboard players operation @s delivery_count += $Linear_Value delivery_count
scoreboard players operation @s delivery_count += $Exponential_Value delivery_count

# Make sure the delivery_count is at least $Minimum
scoreboard players operation @s delivery_count > $Minimum delivery_count

function caw:game/delivery/update_carry_limit
