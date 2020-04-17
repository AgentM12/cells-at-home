# Teleport the player to the respawn lobby
tp @s @e[type=armor_stand,tag=respawn_lobby_marker,limit=1]

# Tag the player as respawning
tag @s add respawning

# Give the player weakness
effect give @s weakness 1000000 20 true
