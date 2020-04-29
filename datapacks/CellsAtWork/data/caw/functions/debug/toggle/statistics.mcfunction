execute if score $STATS debug matches 0 run scoreboard players set $STATS debug -1
scoreboard players operation $STATS debug *= $NEG_ONE constant
execute if score $STATS debug matches ..-1 run scoreboard players reset * debug_display

# Broadcast the format used for easy python extraction of data.
execute if score $STATS debug matches 1 run function caw:debug/statistics/broadcast_format