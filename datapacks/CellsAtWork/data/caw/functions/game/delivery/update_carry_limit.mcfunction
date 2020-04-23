# sandwich_limit = delivery_count * $Delivery_Factor / 10
scoreboard players operation @s sandwich_limit = @s delivery_count
scoreboard players operation @s sandwich_limit *= $Delivery_Factor sandwich_limit
scoreboard players operation @s sandwich_limit /= $Ten constant

# oxygen_limit = delivery_count
scoreboard players operation @s oxygen_limit = @s delivery_count
