function caw:tag/remove_all_tags

team join red_cells @s
tag @s add blood_cell
tag @s add red_cell
tag @s add player
title @s actionbar ["",{"text":"You are now on team ","color":"yellow"},{"text":"Red Cells","color":"red","bold":true}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2 0