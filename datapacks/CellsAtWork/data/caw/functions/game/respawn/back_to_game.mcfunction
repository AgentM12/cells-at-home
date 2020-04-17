# Clear the respawning stuff from the player
scoreboard players reset @s respawnCountdown
tag @s remove respawning
effect clear @s weakness

# Clear the actionbar message
title @s actionbar {"text":""}

# Randomly spawn the player in the level
function caw:game/spread_around_origin
