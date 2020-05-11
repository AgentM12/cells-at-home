function caw:map_events/conveyors/tick

scoreboard players operation $GameStartSeconds timer = $GameStart timer
scoreboard players operation $GameStartSeconds timer += $GLOBAL_TPS constant
scoreboard players remove $GameStartSeconds timer 1
scoreboard players operation $GameStartSeconds timer /= $GLOBAL_TPS constant

title @a times 0 20 20
title @a title ["",{"score":{"name":"$GameStartSeconds","objective":"timer"},"color":"yellow"}]

execute if score $GameStart timer matches 0.. run scoreboard players remove $GameStart timer 1
execute if score $GameStart timer matches 0 run title @a title ["",{"text":"Start!","color":"green"}]
execute if score $GameStart timer matches 0 run title @a times 10 70 20
execute if score $GameStart timer matches 0 run function caw:state/change/game