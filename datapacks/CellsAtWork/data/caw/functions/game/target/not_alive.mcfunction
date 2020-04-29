# When the target cell is killed by a pathogen, a new one gets assigned.

title @s subtitle {"text":"Target Cell Was Killed!","color":"red"}
title @s title ""

tellraw @s ["",{"text":"<Dendritic Cell> Your target cell was killed by a pathogen!"}]
tellraw @s ["",{"text":"<Dendritic Cell> You have been assigned a new target cell!"}]

function caw:game/target/change_target

scoreboard players operation @s delivery_timer = $GLOBAL_SETTING delivery_timer