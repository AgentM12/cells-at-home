# Update the respawnCountdown score
scoreboard players operation @s respawnCountdown = $GLOBAL_RESPAWN_SECONDS respawnCountdown
scoreboard players operation @s respawnCountdown *= $GLOBAL_TPS constants
scoreboard players operation @s respawnCountdown -= @s timeSinceDeath
scoreboard players operation @s respawnCountdown /= $GLOBAL_TPS constants

# Display the respawnCountdown
title @s actionbar [{"text":"Respawning in "},{"score":{"name":"@s","objective":"respawnCountdown"}},{"text":" seconds"}]
