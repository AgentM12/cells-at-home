function caw:debug/statistics/broadcast_format

scoreboard players set $GAME_RAN_FOR debug_data 0

# Unique Identifier for each time the profiler is ran.
scoreboard players add $PROFILE_ID debug_data 1

scoreboard players set $DEBUG_STATS_TRACK timer 400
scoreboard players set $TIMESTAMP debug_data 0
execute store result score $Players debug_data if entity @a[tag=player]
execute store result score $Spectators debug_data if entity @a[tag=spectator]

# Profile the config
tellraw @a [{"text":"","color":"dark_gray"},{"text":"[DEBUG/STATS_CONFIG] "},{"color":"yellow","score":{"objective":"debug_data","name":"$PROFILE_ID"},"hoverEvent":{"action":"show_text","value":"PROFILE_ID"}},{"text":" "},{"score":{"objective":"respawn_timer_s","name":"$GLOBAL_SETTING"},"hoverEvent":{"action":"show_text","value":"RespawnTimeS"}},{"text":" "},{"score":{"objective":"delivery_timer","name":"$GLOBAL_SETTING"},"hoverEvent":{"action":"show_text","value":"DeliveryTimeT"}},{"text":" "},{"score":{"objective":"net_cooldown","name":"$GLOBAL_SETTING"},"hoverEvent":{"action":"show_text","value":"NetCooldownT"}},{"text":" "},{"score":{"objective":"split_rng_bound","name":"$GLOBAL_SETTING"},"hoverEvent":{"action":"show_text","value":"SplitChance"}},{"text":" "},{"score":{"objective":"cell_count","name":"$Start_Count"},"hoverEvent":{"action":"show_text","value":"StartCellCount"}},{"text":" "},{"score":{"objective":"delivery_count","name":"$Exponential_Factor"},"hoverEvent":{"action":"show_text","value":"DC_Exp"}},{"text":" "},{"score":{"objective":"delivery_count","name":"$Linear_Factor"},"hoverEvent":{"action":"show_text","value":"DC_Lin"}},{"text":" "},{"score":{"objective":"delivery_count","name":"$Constant_Factor"},"hoverEvent":{"action":"show_text","value":"DC_Const"}},{"text":" "},{"score":{"objective":"delivery_count","name":"$Minimum"},"hoverEvent":{"action":"show_text","value":"MinDeliveryCount"}},{"text":" "},{"score":{"objective":"sandwich_limit","name":"$Delivery_Factor"},"hoverEvent":{"action":"show_text","value":"SandwichCarryLimit"}},{"text":" "},{"score":{"objective":"nutrients","name":"$Required"},"hoverEvent":{"action":"show_text","value":"NutrientsRequired"}}]

# TIMESTAMP | Players | Spectators
tellraw @a [{"text":"","color":"dark_gray"},{"text":"[DEBUG/STATS_START] "},{"score":{"objective":"debug_data","name":"$TIMESTAMP"},"hoverEvent":{"action":"show_text","value":"TIMESTAMP"}},{"text":" "},{"score":{"objective":"debug_data","name":"$Players"},"hoverEvent":{"action":"show_text","value":"Players"}},{"text":" "},{"score":{"objective":"debug_data","name":"$Spectators"},"hoverEvent":{"action":"show_text","value":"Spectators"}}]