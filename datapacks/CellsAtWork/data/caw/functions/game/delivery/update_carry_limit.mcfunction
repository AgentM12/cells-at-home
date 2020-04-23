# The new carry limit will be at least the amount the player is holding of that item
# This is to prevent players from losing already collected items

# Count the itmes
execute store result score @s has_sandwich run clear @s bread{CAW_ID:"sandwich"} 0
execute store result score @s has_oxygen run clear @s barrel{CAW_ID:"oxygen"} 0

# sandwich_limit = delivery_count * $Delivery_Factor / 10
scoreboard players operation @s sandwich_limit = @s delivery_count
scoreboard players operation @s sandwich_limit *= $Delivery_Factor sandwich_limit
scoreboard players operation @s sandwich_limit /= $Ten constant
scoreboard players operation @s sandwich_limit > @s has_sandwich

# oxygen_limit = delivery_count
scoreboard players operation @s oxygen_limit = @s delivery_count
scoreboard players operation @s oxygen_limit > @s has_oxygen
