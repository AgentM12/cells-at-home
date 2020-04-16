stopsound @a neutral minecraft:entity.villager.no
playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 1 1 0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 0

scoreboard players set @s delivery_timer 60
scoreboard players add @s deliveries_made 1

# Algorithm to determine how many nutrients are required next
scoreboard players add @s delivery_count 1

scoreboard players add $Cells target_progress 1
execute store result bossbar caw:bc_target value run scoreboard players get $Cells target_progress

function caw:game/target/change_target

tag @s add delivery_made