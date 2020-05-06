
clear @a[gamemode=!creative,tag=player]
tp @a[tag=!spectator] @e[type=armor_stand,tag=lobby_marker,limit=1]
execute as @e[type=armor_stand,tag=lobby_marker] at @s run spawnpoint @a

execute as @a[tag=spectator] at @s run function caw:gamemode/unspectator