# Debug before anything else.
execute if score $GLOBAL debug matches 1 run function caw:debug/tick

execute as @a[tag=!p_initialized] at @s run function caw:player/init_first_join

# Handles the eggs to set spawn locations (for map creators)
function caw:summon/spawn_location/all

execute if score $State gamestate matches 0 if score $Change gamestate matches 0 run function caw:state/lobby
execute if score $State gamestate matches 1 if score $Change gamestate matches 0 run function caw:state/game

execute if score $GLOBAL debug matches 1 run function caw:debug/post

execute if score $Change gamestate matches 1 run scoreboard players set $Change gamestate 0