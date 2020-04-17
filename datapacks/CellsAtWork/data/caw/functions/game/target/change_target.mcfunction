tag @s add self
execute as @e[type=villager,tag=matched_cell] at @s run tag @s add old_target

# Keep track of how many nutrients this villager has. This will be used to spawn new cells later.
scoreboard players operation @e[type=villager,tag=old_target,limit=1] nutrients += @s delivery_count

execute as @e[type=villager,tag=cell,tag=!target_cell,sort=random,limit=1] at @s run function caw:game/target/add_target
execute as @e[type=villager,tag=old_target] at @s run function caw:game/target/remove_target
tag @s remove self