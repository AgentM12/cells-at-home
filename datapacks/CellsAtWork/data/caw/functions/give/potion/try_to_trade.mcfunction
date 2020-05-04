# Count the nutrients
execute store result score $Nutrient_Counter potion_count run clear @s bread{CAW_ID:"sandwich"} 0
execute store result score $Counter potion_count run clear @s barrel{CAW_ID:"oxygen"} 0
scoreboard players operation $Nutrient_Counter potion_count += $Counter potion_count

execute if score $Nutrient_Counter potion_count >= $Potion_Count potion_count run function caw:give/potion/trade
