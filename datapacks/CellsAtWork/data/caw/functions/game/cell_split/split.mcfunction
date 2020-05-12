
# The villager will be a child for 20 seconds in which state it can't be traded with.
data merge entity @s {Age:-600s,ArmorItems:[{},{},{},{}]}
scoreboard players operation @s nutrients -= $Required nutrients

function caw:summon/cell_baby