
# 10 starting cells
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell
function caw:summon/cell

execute as @e[type=villager,tag=cell,distance=..2] at @s run function caw:game/spread_around_origin

# Initialize 1 target cell per red blood cell
execute as @a[tag=red_cell] at @s run function caw:game/target/assign_target

