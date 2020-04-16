execute if score @s[tag=!delivery_made] delivery_type matches 1 if score @s has_sandwich >= @s delivery_count run function caw:game/delivery/sandwich
execute if score @s[tag=!delivery_made] delivery_type matches 2 if score @s has_oxygen >= @s delivery_count run function caw:game/delivery/oxygen

execute if score @s[tag=!delivery_made] delivery_type matches 1 run data merge storage caw:text {DeliveryType:"sandwich"}
execute if score @s[tag=!delivery_made] delivery_type matches 2 run data merge storage caw:text {DeliveryType:"oxygen"}

execute if entity @s[tag=!delivery_made] run tellraw @s ["<Cell> ",{"text":"Sorry Red Blood Cell, but I need ","color":"yellow"},{"nbt":"DeliveryType","storage":"caw:text","color":"aqua","bold":true},{"text":" ×","color":"aqua"},{"score":{"objective":"delivery_count","name":"@s"},"color":"aqua"}]
tag @s remove delivery_made