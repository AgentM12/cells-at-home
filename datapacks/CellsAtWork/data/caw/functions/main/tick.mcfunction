# Debug before anything else.
execute if score $GLOBAL debug matches 1 run function caw:debug/tick

execute if score $State gamestate matches 0 if score $Change gamestate matches 0 run function caw:state/lobby
execute if score $State gamestate matches 1 if score $Change gamestate matches 0 run function caw:state/game

execute if score $GLOBAL debug matches 1 run function caw:debug/post

execute if score $Change gamestate matches 1 run scoreboard players set $Change gamestate 0
