function caw:tag/remove_all_tags

team join white_cells @s
tag @s add blood_cell
tag @s add white_cell
tag @s add player
title @s actionbar ["",{"text":"You are now on team ","color":"yellow"},{"text":"White Cells","color":"white","bold":true}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2 0