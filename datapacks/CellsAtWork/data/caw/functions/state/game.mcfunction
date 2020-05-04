
### PRE-PRE ###
function caw:game/rejoin/check_disconnected
function caw:game/respawn/tick
function caw:map_events/conveyors/tick
function caw:kill/banned_items


### PRE ###
execute as @a[tag=player] at @s run function caw:limit/limit_items

execute as @a[tag=red_cell] at @s run function caw:game/target/check_alive

# Store villager Age
execute as @e[type=villager,tag=cell] at @s store result score @s age run data get entity @s Age

# Slow down all cells (including infected)
execute as @e[type=villager] at @s run effect give @s minecraft:slowness 1 1 true

# Infect cells that are poisoned
execute as @e[type=villager,tag=cell] at @s store result score @s is_poisoned run effect clear @s minecraft:poison
execute as @e[type=villager,tag=cell,scores={is_poisoned=1..}] at @s run function caw:game/infect/cell

# Player fixes
gamemode adventure @a[gamemode=survival]
execute as @a[gamemode=adventure,tag=!player] at @s run function caw:gamemode/spectator
clear @a[tag=player] minecraft:glass_bottle

# Remove Experience
kill @e[type=experience_orb,tag=!imp]
xp set @a[tag=player] 0 levels
xp set @a[tag=player] 0 points

# Player Effects
effect give @a[tag=player,tag=!white_cell] minecraft:saturation 20 100 true
effect give @a[tag=red_cell] minecraft:weakness 1 20 true
effect clear @a[tag=pathogen] minecraft:slowness
effect clear @a[tag=pathogen] minecraft:poison


## Game Over Conditions ##

# Count cells
execute store result score $TotalCells count if entity @e[type=villager,tag=cell]
execute store result score $InfectedCells count if entity @e[type=villager,tag=infected_cell]

# Too many cells -> body wins
execute if score $TotalCells count >= $Cells_Target target_progress run function caw:game/over/too_many_cells

# Too little cells -> virus wins
execute if score $TotalCells count <= $Cells_Minimum target_progress run function caw:game/over/too_little_cells

# Too many infected cells -> virus wins
execute if score $InfectedCells count >= $Pathogens_Target target_progress run function caw:game/over/too_many_infected_cells

# Update bossbars
scoreboard players operation $TotalCells_Bossbar target_progress = $TotalCells count
scoreboard players operation $TotalCells_Bossbar target_progress -= $Cells_Minimum target_progress
execute store result bossbar caw:bc_target value run scoreboard players get $TotalCells_Bossbar target_progress
execute store result bossbar caw:pg_target value run scoreboard players get $InfectedCells count

## Timers ##
scoreboard players remove $Second timer 1
execute if score $Second timer matches ..0 run function caw:timer/1s

## Cooldowns ##
execute as @a[tag=pathogen,scores={net_cooldown=1..}] at @s run scoreboard players remove @s net_cooldown 1

# Give required items
function caw:give/potion/update_potion_count
execute as @a[tag=player] at @s run function caw:give/required_items


### MID ###
execute as @a[tag=pathogen,scores={use_potion=1..}] at @s run scoreboard players operation @s net_cooldown = $GLOBAL_SETTING net_cooldown
execute as @a[tag=player,tag=!red_cell,scores={has_sandwich=1..}] at @s run function caw:game/has_sandwich
execute as @a[tag=red_cell,scores={villager_clicked=1..}] at @s run function caw:game/delivery/check_id

# White cell energy drain
execute as @a[scores={food=0}] at @s run kill @s
execute as @a[tag=white_cell,scores={food=20}] at @s run effect give @s minecraft:hunger 1 50 true
execute as @a[tag=white_cell] at @s run effect give @s hunger 1 5 true


### POST ###

# Reset scores
scoreboard players set @a[tag=pathogen] use_potion 0
scoreboard players set @a[tag=player,scores={killed_red_cell=1..}] killed_red_cell 0
scoreboard players set @a[tag=player,scores={kill_by_pathogen=1..}] kill_by_pathogen 0
scoreboard players set @a[tag=player,scores={was_killed=1..}] was_killed 0
scoreboard players set @a[tag=player,scores={villager_clicked=1..}] villager_clicked 0
