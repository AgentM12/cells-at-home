
# Delete old
execute as @e[type=armor_stand,tag=game_origin] at @s run forceload remove ~-2 ~-2 ~2 ~2
execute as @e[type=armor_stand,tag=game_origin] at @s run kill @s

# Spawn new
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["imp","game_origin"],CustomName:'"Game Origin"'}
forceload add ~-1 ~-1 ~1 ~1