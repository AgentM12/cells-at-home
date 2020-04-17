
# The villager will be a child for 20 seconds in which state it can't be traded with.
data merge entity @s {Age:-400s}
scoreboard players remove @s nutrients 1

function caw:summon/cell_baby