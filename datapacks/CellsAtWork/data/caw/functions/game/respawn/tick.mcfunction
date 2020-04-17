# Bring players that have recently died to the respawn lobby
execute as @a[tag=player,scores={timeSinceDeath=0}] run function caw:game/respawn/to_respawn_lobby

# Update the respawn countdown
execute as @a[tag=respawning] run function caw:game/respawn/countdown

# Respawn the players, for which the countdown has finished
execute as @a[tag=respawning,scores={respawnCountdown=..0}] run function caw:game/respawn/back_to_game
