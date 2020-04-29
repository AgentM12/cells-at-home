execute if score $GAME_OVER_WINNER id matches 1 run data modify storage caw:text GameOverWinner set value '{"text":"Blood Cells Win!","color":"red"}'
execute if score $GAME_OVER_WINNER id matches 2 run data modify storage caw:text GameOverWinner set value '{"text":"Pathogens Win!","color":"dark_purple"}'

execute if score $GAME_OVER_REASON id matches 1 run data modify storage caw:text GameOverReason set value '{"text":"There were less than 5 cells alive in the body... The pathogens won!","color":"light_purple"}'
execute if score $GAME_OVER_REASON id matches 2 run data modify storage caw:text GameOverReason set value '{"text":"There were more than 30 cells infected in the body... The pathogens won!","color":"light_purple"}'