execute if score $GLOBAL debug matches 0 run scoreboard players set $GLOBAL debug -1
scoreboard players operation $GLOBAL debug *= $NEG_ONE constant
execute if score $GLOBAL debug matches ..-1 run function caw:debug/off
execute if score $GLOBAL debug matches 1.. run function caw:debug/on

function caw:settings/update_books

function caw:echo_off
