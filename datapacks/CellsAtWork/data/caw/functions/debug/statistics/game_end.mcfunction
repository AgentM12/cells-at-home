# Print data to chat (profiling)
# GAME DURATION | WINNER | WIN_REASON
tellraw @a [{"text":"","color":"dark_gray"},{"text":"[DEBUG/STATS_END] "},{"score":{"objective":"debug_data","name":"$GAME_RAN_FOR"},"hoverEvent":{"action":"show_text","value":"Game Ran for in Ticks"}},{"text":" "},{"score":{"objective":"id","name":"$GAME_OVER_WINNER"},"hoverEvent":{"action":"show_text","value":"Game Over Winner\n1: Blood Cells\n2: Pathogens"}},{"text":" "},{"score":{"objective":"id","name":"$GAME_OVER_REASON"},"hoverEvent":{"action":"show_text","value":"Game Over Reason"}}]