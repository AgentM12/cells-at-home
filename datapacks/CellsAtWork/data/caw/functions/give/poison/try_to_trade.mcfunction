# Count the nutrients
execute store result score $Nutrient_Counter poison_count run clear @s bread{CAW_ID:"sandwich"} 0
execute store result score $Counter poison_count run clear @s barrel{CAW_ID:"oxygen"} 0
scoreboard players operation $Nutrient_Counter poison_count += $Counter poison_count

execute if score $Nutrient_Counter poison_count >= $poison_count poison_count run function caw:give/poison/trade
