function caw:tag/remove_all_tags
team join pathogens @s
tag @s add pathogen
tag @s add player
title @s actionbar ["",{"text":"You are now on team ","color":"yellow"},{"text":"Pathogens","color":"dark_purple","bold":true}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2 0