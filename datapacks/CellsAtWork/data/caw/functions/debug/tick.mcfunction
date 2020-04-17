scoreboard objectives setdisplay sidebar debug_display
execute if score $ENTITY_COUNTER debug matches 1.. run function caw:debug/entity_counter
execute if score $TIMERS debug matches 1.. run function caw:debug/timers