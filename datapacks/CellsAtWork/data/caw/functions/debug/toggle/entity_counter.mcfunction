execute if score $ENTITY_COUNTER debug matches 0 run scoreboard players set $ENTITY_COUNTER debug -1
scoreboard players operation $ENTITY_COUNTER debug *= $NEG_ONE constant
execute if score $ENTITY_COUNTER debug matches ..-1 run scoreboard players reset * debug_display