# Checks if the cell has a target cell. If not, reassign it.

tag @s add self
execute as @e[type=villager,tag=target_cell] at @s if score @s delivery_id = @a[tag=self,limit=1] player_id run tag @a[tag=self,limit=1] add has_target
tag @s remove self

execute unless entity @s[tag=has_target] run function caw:game/target/not_alive

tag @s remove has_target