
gamemode adventure @a[gamemode=survival]

execute as @a[tag=spectator] at @s run function caw:gamemode/unspectator
execute as @a[gamemode=adventure] at @s run function caw:lobby/player_effects
execute as @a[gamemode=adventure] at @s run function caw:lobby/join_teams

# Finish ticking transactions
execute if score $C_PUSH timer matches ..18 run function caw:map_events/conveyors/tick