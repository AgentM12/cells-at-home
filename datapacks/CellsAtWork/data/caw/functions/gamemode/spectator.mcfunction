
# Clear old state
function caw:tag/remove_all_tags

gamemode spectator @s
team join spectators
tag @s add spectator
tag @s add new_spectator

# Start spectating a random player
schedule function caw:game/init/random_spectate_all_spectators 5t replace