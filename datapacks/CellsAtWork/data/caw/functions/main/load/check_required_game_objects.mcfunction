# Checks for required game objects and if they are missing or can't be found. (Must be loaded through forceload/setworldspawn)

scoreboard players reset * missing_req
execute unless entity @e[type=armor_stand,tag=lobby_marker] run scoreboard players set $Lobby missing_req 1
execute unless entity @e[type=armor_stand,tag=game_origin] run scoreboard players set $Origin missing_req 1
execute unless entity @e[type=armor_stand,tag=respawn_lobby_marker] run scoreboard players set $RespawnLobby missing_req 1

execute if score $Lobby missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game is missing a Lobby Marker!","color":"red"}]
execute if score $Origin missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game is missing a Game Origin!","color":"red"}]
execute if score $RespawnLobby missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game is missing a Respawn Lobby Marker!","color":"red"}]