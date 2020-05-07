
### PRE-PRE ###
function caw:game/rejoin/check_disconnected
function caw:game/respawn/tick
function caw:map_events/conveyors/tick
function caw:kill/banned_items

### PRE ###
execute as @a[tag=player] at @s run function caw:limit/limit_items

execute as @a[tag=red_cell] at @s run function caw:game/target/check_alive

execute as @e[type=minecraft:armor_stand,tag=anti_pathogen_barrier] at @s run function caw:game/pathogen_barrier/forcefield

# Damaged cells warn players.
execute as @e[type=villager] at @s store result score @s pain_value run data get entity @s HurtByTimestamp
execute as @e[type=villager,scores={pain_value=1..}] at @s run function caw:game/warn/cell_damaged

# Player particles
execute as @a[tag=red_cell] at @s run function caw:game/warn/red_cell
execute as @a[tag=white_cell] at @s run function caw:game/warn/white_cell

# At all players spawn a cloud to be used when the player dies.
execute as @a[tag=player] at @s run function caw:game/death_particles/tracker
execute as @a[tag=player,scores={timeSinceDeath=0}] at @s run function caw:game/death_particles/find_cloud
execute as @a[nbt={ActiveEffects:[{Id:1b}]}] at @s run particle dust .75 .5 .25 1 ~ ~ ~ .5 1 .5 0 3 normal

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

### MID ###
execute as @a[scores={use_potion=1..}] at @s run function caw:game/check_potion_used
execute as @a[tag=player,tag=!red_cell,scores={has_sandwich=1..}] at @s run function caw:game/has_sandwich
execute as @a[tag=red_cell,scores={villager_clicked=1..}] at @s run function caw:game/delivery/check_id

# Give required items
function caw:give/poison/update_poison_count
execute as @a[tag=player] at @s run function caw:give/required_items

# White cell energy drain
execute as @a[scores={food=0}] at @s run kill @s
execute as @a[tag=white_cell,scores={food=20}] at @s run effect give @s minecraft:hunger 1 30 true
execute as @a[tag=white_cell] at @s run effect give @s hunger 1 3 true


### POST ###

# Set the previous used score
execute as @a[tag=pathogen] at @s store result score @s has_net_prev_t run clear @s minecraft:splash_potion{CAW_ID:"net"} 0
execute as @a[tag=pathogen] at @s store result score @s has_poison_prev run clear @s minecraft:splash_potion{CAW_ID:"spawn_pathogen"} 0
execute as @a at @s store result score @s has_coffee_prev run clear @s minecraft:splash_potion{CAW_ID:"coffee"} 0

# Reset scores
scoreboard players set @a use_potion 0
scoreboard players set @a[tag=player,scores={killed_red_cell=1..}] killed_red_cell 0
scoreboard players set @a[tag=player,scores={kill_by_pathogen=1..}] kill_by_pathogen 0
scoreboard players set @a[tag=player,scores={was_killed=1..}] was_killed 0
scoreboard players set @a[tag=player,scores={villager_clicked=1..}] villager_clicked 0
