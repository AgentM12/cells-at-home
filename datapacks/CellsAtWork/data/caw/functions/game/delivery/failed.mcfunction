tag @s add self
execute as @e[type=villager,tag=target_cell] if score @s delivery_id = @a[tag=self,limit=1] player_id run tag @s add matched_cell
tag @s remove self

function caw:game/target/failed_target

title @s subtitle {"text":"Delivery Missed!","color":"red"}
title @s title ""
tellraw @s "<Dendritic Cell> You failed to deliver the nutrients in time!"

playsound minecraft:entity.villager.death neutral @a ~ ~ ~ 1 1 0

scoreboard players set @s delivery_timer 60