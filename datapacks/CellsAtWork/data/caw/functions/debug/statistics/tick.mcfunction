# Debug profile every 20s
scoreboard players add $GAME_RAN_FOR debug_data 1

scoreboard players remove $DEBUG_STATS_TRACK timer 1
execute if score $DEBUG_STATS_TRACK timer matches ..0 run function caw:debug/statistics/profile_10s
execute if score $DEBUG_STATS_TRACK timer matches ..0 run scoreboard players set $DEBUG_STATS_TRACK timer 200

# Event triggers