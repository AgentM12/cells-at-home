
# Clear old state
function caw:tag/remove_all_tags

gamemode spectator @s
team join spectators
tag @s add spectator

# Start spectating a random player
function caw:set/player/spectate_random