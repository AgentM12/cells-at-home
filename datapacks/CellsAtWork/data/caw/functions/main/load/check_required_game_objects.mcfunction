# Checks for required game objects and if they are missing or can't be found. (Must be loaded through forceload/setworldspawn)

scoreboard players reset * missing_req
execute unless entity @e[type=armor_stand,tag=lobby_marker] run scoreboard players set $Lobby missing_req 1
execute unless entity @e[type=armor_stand,tag=game_origin] run scoreboard players set $Origin missing_req 1
execute unless entity @e[type=armor_stand,tag=respawn_lobby_marker] run scoreboard players set $RespawnLobby missing_req 1

# At least 3 pathogen, 6 bloodcell and 10 cell spawn locations.
execute store result score $PSL count if entity @e[type=armor_stand,tag=sl_pathogen_marker]
execute store result score $BCSL count if entity @e[type=armor_stand,tag=sl_bloodcell_marker]
execute store result score $CSL count if entity @e[type=armor_stand,tag=sl_cell_marker]

execute if score $PSL count matches ..2 run scoreboard players set $PathogenSL missing_req 1
execute if score $BCSL count matches ..5 run scoreboard players set $BloodCellSL missing_req 1
execute if score $CSL count matches ..9 run scoreboard players set $CellSL missing_req 1

execute if score $Lobby missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game is missing a Lobby Marker!","color":"red"}]
execute if score $Origin missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game is missing a Game Origin!","color":"red"}]
execute if score $RespawnLobby missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game is missing a Respawn Lobby Marker!","color":"red"}]
execute if score $PathogenSL missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game requires at least 3 Pathogen Spawn Location Markers!","color":"red"}]
execute if score $BloodCellSL missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game requires at least 6 Bloodcell Spawn Location Markers!","color":"red"}]
execute if score $CellSL missing_req matches 1 run tellraw @a ["",{"text":"[ERROR] The game requires at least 10 Cell Spawn Location Markers!","color":"red"}]