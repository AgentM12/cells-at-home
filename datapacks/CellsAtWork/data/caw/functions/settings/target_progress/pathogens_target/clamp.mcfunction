# Clamp between 0 and 100
execute unless score $Pathogens_Target target_progress matches 1.. run scoreboard players set $Pathogens_Target target_progress 1
execute unless score $Pathogens_Target target_progress matches ..100 run scoreboard players set $Pathogens_Target target_progress 100
