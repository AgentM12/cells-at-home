
# Rejoin handler
function caw:game/rejoin/check_disconnected

### PRE ###
function caw:kill/banned_items
execute as @a[tag=player] at @s run function caw:limit/limit_items
function caw:game/respawn/tick

# clean players
gamemode adventure @a[gamemode=survival]
execute as @a[gamemode=adventure,tag=!player] at @s run function caw:gamemode/spectator

xp set @a[tag=player] 0 levels
xp set @a[tag=player] 0 points

effect give @a[tag=player,tag=!white_cell] minecraft:saturation 20 100 true
effect give @a[tag=red_cell] minecraft:weakness 1 20 true
effect clear @a[tag=pathogen] minecraft:slowness

clear @a[tag=player] minecraft:glass_bottle

## Game Over Conditions ##

# Less than 5 villagers is game over for bloodcells.
# 

# timers
scoreboard players remove $Second timer 1
execute if score $Second timer matches ..0 run function caw:timer/1s

execute as @a[tag=pathogen,scores={net_cooldown=1..}] at @s run scoreboard players remove @s net_cooldown 1
execute as @a[tag=player] at @s run function caw:give/required_items

### MID ###
execute as @a[tag=pathogen,scores={use_potion=1..}] at @s run scoreboard players operation @s net_cooldown = $GLOBAL_SETTING net_cooldown
execute as @a[tag=player,tag=!red_cell,scores={has_sandwich=1..}] at @s run function caw:game/has_sandwich
execute as @a[tag=red_cell,scores={villager_clicked=1..}] at @s run function caw:game/delivery/check_id

# White cell energy drain
execute as @a[scores={food=0}] at @s run kill @s
execute as @a[tag=white_cell,scores={food=20}] at @s run effect give @s minecraft:hunger 1 50 true
execute as @a[tag=white_cell] at @s run effect give @s hunger 1 5 true

# Red cell locators
#execute as @a[tag=red_cell]

### POST ###
scoreboard players set @a[tag=pathogen] use_potion 0

scoreboard players set @a[tag=player,scores={killed_red_cell=1..}] killed_red_cell 0
scoreboard players set @a[tag=player,scores={kill_by_pathogen=1..}] kill_by_pathogen 0
scoreboard players set @a[tag=player,scores={was_killed=1..}] was_killed 0
scoreboard players set @a[tag=player,scores={villager_clicked=1..}] villager_clicked 0