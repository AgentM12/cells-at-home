
### Reset ###
scoreboard players reset * score
scoreboard players reset * age
scoreboard objectives setdisplay sidebar score

scoreboard players set $Cells target_progress 0
scoreboard players set $Pathogens target_progress 0

tag @a remove respawning

# kills
function caw:kill/variable_map_objects

# Initialize Map Event Data
function caw:game/init/map_event_data

# The game ID. used to determine if a player can rejoin an already started game or not. (anti-cheat)
scoreboard players add $GLOBAL game_id 1
scoreboard players operation @a[tag=player] game_id = $GLOBAL game_id

### Initialization ###

# Initialize players
scoreboard players set $GLOBAL player_id 0
scoreboard players set @a[tag=player] player_id 0

execute as @r[tag=player] at @s run function caw:game/init/player_ids
execute as @a[tag=player] at @s run function caw:game/init/player

scoreboard players set @a[tag=red_cell] delivery_count 1
scoreboard players set @a[tag=red_cell] delivery_type 1
scoreboard players set @a[tag=red_cell] deliveries_made 0

# Setup Game Objects
execute as @e[type=armor_stand,tag=game_origin,limit=1] at @s run function caw:game/init/game_objects

# Initialize timers
scoreboard players operation @a[tag=red_cell] delivery_timer = $GLOBAL_SETTING delivery_timer
scoreboard players set $Second timer 20

# Initialize targets
execute store result bossbar caw:bc_target max run scoreboard players get $GLOBAL_SETTING target_progress
execute store result bossbar caw:bc_target value run scoreboard players get $Cells target_progress
bossbar set caw:bc_target players @a[tag=player]
bossbar set caw:bc_target visible true

execute store result bossbar caw:pg_target max run scoreboard players get $GLOBAL_SETTING target_progress
execute store result bossbar caw:pg_target value run scoreboard players get $Pathogens target_progress
bossbar set caw:pg_target players @a[tag=player]
bossbar set caw:pg_target visible true