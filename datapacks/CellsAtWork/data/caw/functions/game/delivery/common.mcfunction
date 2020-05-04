stopsound @a neutral minecraft:entity.villager.no
playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 1 1 0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 0

scoreboard players operation @s delivery_timer = $GLOBAL_SETTING delivery_timer
scoreboard players add @s deliveries_made 1

function caw:game/target/change_target

function caw:game/delivery/update_delivery_count

tag @s add delivery_made
