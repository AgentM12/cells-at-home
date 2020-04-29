# This file broadcasts the formats used by the profiler (Table headers) to chat, used in data extraction.

tellraw @a [{"text":"[DEBUG/FORMAT_CONFIG] ","color":"dark_gray"},{"text":"PROFILE_ID RespawnTime DeliveryTime NetCooldown SplitChance StartCellCount DC_Exp DC_Lin DC_Const MinDeliveryCount SandwichCarryLimit"}]
tellraw @a [{"text":"[DEBUG/FORMAT_START] ","color":"dark_gray"},{"text":"TIME Players Spectators"}]
tellraw @a [{"text":"[DEBUG/FORMAT_TICK] ","color":"dark_gray"},{"text":"TIME Total Adult Child Infected"}]
tellraw @a [{"text":"[DEBUG/FORMAT_END] ","color":"dark_gray"},{"text":"TOTAL_TIME_TICKS Winner Reason"}]