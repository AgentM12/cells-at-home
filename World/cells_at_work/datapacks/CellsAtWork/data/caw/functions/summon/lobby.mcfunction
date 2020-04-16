
# Delete old
kill @e[type=armor_stand,tag=lobby_marker]

# Spawn new
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["imp","lobby_marker"],CustomName:'"Lobby Center"'}
setworldspawn ~ ~ ~