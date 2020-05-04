execute if score $GAME_OVER_WINNER id matches 1 run data modify storage caw:text GameOverWinner set value '{"text":"Blood Cells Win!","color":"red"}'
execute if score $GAME_OVER_WINNER id matches 2 run data modify storage caw:text GameOverWinner set value '{"text":"Pathogens Win!","color":"dark_purple"}'

execute if score $GAME_OVER_REASON id matches 1 run data modify storage caw:text GameOverReason set value '[{"text":"There were ","color":"light_purple"},{"score":{"name":"$Cells_Minimum", "objective":"target_progress"},"color":"light_purple"},{"text":" or less cells alive in the body... The pathogens won!","color":"light_purple"}]'
execute if score $GAME_OVER_REASON id matches 2 run data modify storage caw:text GameOverReason set value '[{"text":"There were ","color":"light_purple"},{"score":{"name":"$Pathogens_Target", "objective":"target_progress"},"color":"light_purple"},{"text":" or more cells infected in the body... The pathogens won!","color":"light_purple"}]'
execute if score $GAME_OVER_REASON id matches 3 run data modify storage caw:text GameOverReason set value '[{"text":"There were ","color":"red"},{"score":{"name":"$Cells_Target", "objective":"target_progress"},"color":"red"},{"text":" or more cells in the body... The blood cells won!","color":"red"}]'
