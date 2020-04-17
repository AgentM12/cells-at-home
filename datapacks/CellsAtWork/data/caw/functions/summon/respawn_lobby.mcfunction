# Delete old marker
kill @e[type=armor_stand,tag=respawn_lobby_marker]

# Spawn a new marker
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["imp","respawn_lobby_marker"],CustomName:'"Respawn Lobby Center"'}