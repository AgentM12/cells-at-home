# Remove one sandwich or oxygen
execute store result score $Counter poison_count run clear @s bread{CAW_ID:"sandwich"} 1
execute unless score $Counter poison_count matches 1 run clear @s barrel{CAW_ID:"oxygen"} 1

# Update the count
scoreboard players remove $Nutrient_Counter poison_count 1

# Loop if we have not deleted enough
execute if score $Nutrient_Counter poison_count matches 1.. run function caw:give/poison/trade_loop
