tag @s add self
execute as @e[type=villager,tag=matched_cell] at @s run tag @s add old_target

# Keep track of how many nutrients this villager has. This will be used to spawn new cells later.
scoreboard players operation @e[type=villager,tag=old_target,limit=1] nutrients += @s delivery_count

# Try to find an adult villager to target first.
execute as @e[type=villager,tag=cell,tag=!target_cell,scores={age=0},sort=random,limit=1] at @s run function caw:game/target/add_target

# If there aren't enough adult villagers, try a child villager. (since there must be at least 5 villagers, there will always be enough adult+child villagers)
execute unless entity @s[tag=new_target_found_for_player] as @e[type=villager,tag=cell,tag=!target_cell,sort=random,limit=1] at @s run function caw:game/target/add_target

# Remove old cell
execute as @e[type=villager,tag=old_target] at @s run function caw:game/target/remove_target

tag @s remove new_target_found_for_player
tag @s remove self