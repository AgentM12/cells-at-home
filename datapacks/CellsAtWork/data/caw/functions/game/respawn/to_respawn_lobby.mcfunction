# Teleport the player to the respawn lobby
tp @s @e[tag=respawn_lobby_marker,type=armor_stand,limit=1]

# Tag the player as respawning
tag @s add respawning

# Give the player weakness
effect give @s weakness 1000000 255 true
