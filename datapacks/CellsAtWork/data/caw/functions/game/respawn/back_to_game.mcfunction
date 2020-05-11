# Clear the respawning stuff from the player
scoreboard players reset @s respawn_timer_s
tag @s remove respawning
effect clear @s

# Clear the actionbar message
title @s actionbar {"text":""}

# Randomly spawn the player in the level
execute if entity @s[tag=pathogen] run function caw:game/spawn/pathogen
execute if entity @s[tag=blood_cell] run function caw:game/spawn/bloodcell