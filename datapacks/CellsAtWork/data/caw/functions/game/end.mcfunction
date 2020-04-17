title @a subtitle {"nbt":"GameOverWinner","storage":"caw:text","interpret":true}
title @a title {"text":"Game Over!","color":"red"}

tellraw @a ["",{"text":"[Game Over] "},{"nbt":"GameOverReason","storage":"caw:text","interpret":true}]

function caw:state/change/lobby