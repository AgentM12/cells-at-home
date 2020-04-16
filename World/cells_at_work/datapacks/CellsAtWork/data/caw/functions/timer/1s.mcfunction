function caw:update/delivery_timer

function caw:update/cell_locations
execute as @a[tag=red_cell] at @s run function caw:update/locations

scoreboard players set $Second timer 20