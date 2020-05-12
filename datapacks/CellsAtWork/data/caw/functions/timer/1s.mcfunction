function caw:game/cell_split/split_timer

function caw:update/delivery_timer

execute as @e[type=villager,tag=target_cell] at @s run function caw:update/cell_locations
execute as @a[tag=red_cell] at @s run function caw:update/locations

function caw:game/init/coffee_refill

scoreboard players set $Second timer 20