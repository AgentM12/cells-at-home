execute if score $TIMERS debug matches 0 run scoreboard players set $TIMERS debug -1
scoreboard players operation $TIMERS debug *= $NEG_ONE constant
execute if score $TIMERS debug matches ..-1 run scoreboard players reset * debug_display