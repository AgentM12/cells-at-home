execute if score @s pos_x matches ..-5 if score @s pos_z matches ..-5 run data merge storage caw:text {Direction:'{"nbt":"Arrows[1]","storage":"caw:text"}'}
execute if score @s pos_x matches -5..5 if score @s pos_z matches ..-5 run data merge storage caw:text {Direction:'{"nbt":"Arrows[2]","storage":"caw:text"}'}
execute if score @s pos_x matches 5.. if score @s pos_z matches ..-5 run data merge storage caw:text {Direction:'{"nbt":"Arrows[3]","storage":"caw:text"}'}
execute if score @s pos_x matches 5.. if score @s pos_z matches -5..5 run data merge storage caw:text {Direction:'{"nbt":"Arrows[4]","storage":"caw:text"}'}
execute if score @s pos_x matches 5.. if score @s pos_z matches 5.. run data merge storage caw:text {Direction:'{"nbt":"Arrows[5]","storage":"caw:text"}'}
execute if score @s pos_x matches -5..5 if score @s pos_z matches 5.. run data merge storage caw:text {Direction:'{"nbt":"Arrows[6]","storage":"caw:text"}'}
execute if score @s pos_x matches ..-5 if score @s pos_z matches 5.. run data merge storage caw:text {Direction:'{"nbt":"Arrows[7]","storage":"caw:text"}'}
execute if score @s pos_x matches ..-5 if score @s pos_z matches -5..5 run data merge storage caw:text {Direction:'{"nbt":"Arrows[0]","storage":"caw:text"}'}