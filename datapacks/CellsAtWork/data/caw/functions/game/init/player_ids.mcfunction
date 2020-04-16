scoreboard players add $GLOBAL player_id 1
scoreboard players operation @s player_id = $GLOBAL player_id
execute as @r[tag=player,scores={player_id=0}] at @s run function caw:game/init_player_ids