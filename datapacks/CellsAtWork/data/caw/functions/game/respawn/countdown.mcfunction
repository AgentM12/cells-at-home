# Update the respawn timer
scoreboard players operation @s respawn_timer_s = $GLOBAL_SETTING respawn_timer_s
scoreboard players operation @s respawn_timer_s *= $GLOBAL_TPS constant
scoreboard players operation @s respawn_timer_s -= @s timeSinceDeath
scoreboard players operation @s respawn_timer_s /= $GLOBAL_TPS constant

# Display the respawn timer
title @s actionbar [{"text":"Respawning in "},{"score":{"name":"@s","objective":"respawn_timer_s"}},{"text":" seconds"}]
