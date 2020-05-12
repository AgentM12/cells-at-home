
function caw:update/cell_locations

tag @s add self
execute as @e[type=villager,tag=target_cell] at @s if score @s delivery_id = @a[tag=self,limit=1] player_id run function caw:update/cell_subtract
execute as @e[type=villager,tag=target_cell,distance=..15] at @s if score @s delivery_id = @a[tag=self,limit=1] player_id run tag @a[tag=self,limit=1] add target_nearby
execute as @e[type=villager,tag=target_cell,distance=30..] at @s if score @s delivery_id = @a[tag=self,limit=1] player_id run tag @a[tag=self,limit=1] add target_faraway
tag @s remove self

# Show arrow based on location
data merge storage caw:text {Direction:'{"text":"o","color":"blue"}'}

execute if entity @s[y_rotation=-22.5..22.5] run function caw:update/locator/facing_s
execute if entity @s[y_rotation=22.5..67.5] run function caw:update/locator/facing_se
execute if entity @s[y_rotation=67.5..112.5] run function caw:update/locator/facing_e
execute if entity @s[y_rotation=112.5..157.5] run function caw:update/locator/facing_ne
execute unless entity @s[y_rotation=-157.5..157.5] run function caw:update/locator/facing_n
execute if entity @s[y_rotation=-157.5..-112.5] run function caw:update/locator/facing_nw
execute if entity @s[y_rotation=-112.5..-67.5] run function caw:update/locator/facing_w
execute if entity @s[y_rotation=-67.5..-22.5] run function caw:update/locator/facing_sw

# The delivery type.
execute if score @s delivery_type matches 1 run data merge storage caw:text {"NutrientType":"sandwich"}
execute if score @s delivery_type matches 2 run data merge storage caw:text {"NutrientType":"oxygen"}

execute if entity @s[tag=target_nearby] run title @s[tag=!respawning] actionbar [{"text":"Deliver ","color":"yellow"},{"nbt":"NutrientType","storage":"caw:text","color":"green","bold":"true"},{"text":" ("},{"text":"×","color":"green"},{"score":{"objective":"delivery_count","name":"@s"},"color":"green"},{"text":") in "},{"score":{"objective":"delivery_timer","name":"@s"}},{"text":"s ["},{"nbt":"Direction","storage":"caw:text","color":"green","bold":true,"interpret":true},{"text":"]"}]
execute if entity @s[tag=!target_nearby,tag=!target_faraway] run title @s[tag=!respawning] actionbar [{"text":"Deliver ","color":"yellow"},{"nbt":"NutrientType","storage":"caw:text","color":"green","bold":"true"},{"text":" ("},{"text":"×","color":"green"},{"score":{"objective":"delivery_count","name":"@s"},"color":"green"},{"text":") in "},{"score":{"objective":"delivery_timer","name":"@s"}},{"text":"s ["},{"nbt":"Direction","storage":"caw:text","color":"gold","bold":true,"interpret":true},{"text":"]"}]
execute if entity @s[tag=target_faraway] run title @s[tag=!respawning] actionbar [{"text":"Deliver ","color":"yellow"},{"nbt":"NutrientType","storage":"caw:text","color":"green","bold":"true"},{"text":" ("},{"text":"×","color":"green"},{"score":{"objective":"delivery_count","name":"@s"},"color":"green"},{"text":") in "},{"score":{"objective":"delivery_timer","name":"@s"}},{"text":"s ["},{"nbt":"Direction","storage":"caw:text","color":"red","bold":true,"interpret":true},{"text":"]"}]
tag @s remove target_nearby
tag @s remove target_faraway