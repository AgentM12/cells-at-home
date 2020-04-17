# Use this when the delivery wasn't made. The cell will die
function caw:game/target/change_target

execute as @e[type=villager,tag=matched_cell,limit=1] at @s run tp @s ~ -1000 ~
kill @e[type=villager,tag=matched_cell,limit=1]