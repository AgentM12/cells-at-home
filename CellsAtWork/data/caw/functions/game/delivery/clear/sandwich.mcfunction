clear @s bread{CAW_ID:"sandwich"} 1
scoreboard players add @s score 1

scoreboard players remove $GLOBAL delivery_count 1
execute if score $GLOBAL delivery_count matches 1.. run function caw:game/delivery/clear/sandwich