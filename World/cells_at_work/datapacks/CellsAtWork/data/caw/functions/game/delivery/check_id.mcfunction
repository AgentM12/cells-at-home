execute if score @e[type=villager,tag=target_cell,distance=..3,limit=1] delivery_id = @s player_id run tag @s add villager_id_match
execute if entity @s[tag=villager_id_match] run function caw:game/delivery/check_type
execute unless entity @s[tag=villager_id_match] run tellraw @s ["<Cell> ",{"text":"Are you lost Red Blood Cell?","color":"yellow"},{"text":" I don't need that!","color":"red"}]
tag @s remove villager_id_match