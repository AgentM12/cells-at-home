# Checks the villager delivery ID against the player ID, if it matches then it is correct.
execute if score @e[type=villager,tag=target_cell,distance=..3,limit=1] delivery_id = @s player_id run tag @s add villager_id_match
execute if entity @s[tag=villager_id_match] run tag @e[type=villager,tag=target_cell,distance=..3,limit=1] add matched_cell
execute if entity @s[tag=villager_id_match] run function caw:game/delivery/check_type

# No match found? Wrong villager!
execute unless entity @s[tag=villager_id_match] run tellraw @s ["<Cell> ",{"text":"Are you lost Red Blood Cell?","color":"yellow"},{"text":" I don't need that!","color":"red"}]
tag @s remove villager_id_match
tag @e[type=villager,tag=matched_cell] remove matched_cell