
gamemode adventure @a[gamemode=survival]

execute as @a[tag=spectator] at @s run function caw:gamemode/unspectator
execute as @a[gamemode=adventure] at @s run function caw:lobby/player_effects
execute as @a[gamemode=adventure] at @s if score $Paused gamestate matches 0 run function caw:lobby/join_teams

# Finish ticking transactions
execute if score $C_PUSH timer < $PUSH_SPEED_MIN_ONE constant if score $Paused gamestate matches 0 run function caw:map_events/conveyors/tick

# Startup sequence
execute if score $Paused gamestate matches 1 run function caw:lobby/countdown