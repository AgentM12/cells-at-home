# Happens after all the game logic.

# On a state change to or from game.
execute if score $State gamestate matches 1 if score $Change gamestate matches 1 run function caw:debug/statistics/game_start
execute if score $State gamestate matches 0 if score $Change gamestate matches 1 run function caw:debug/statistics/game_end