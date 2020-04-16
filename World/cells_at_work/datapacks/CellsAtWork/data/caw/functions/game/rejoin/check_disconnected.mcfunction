execute as @a[tag=player,scores={left_game=1..}] at @s if score @s game_id = $GLOBAL game_id run function caw:game/rejoin/handler_valid
execute as @a[tag=player,scores={left_game=1..}] at @s unless score @s game_id = $GLOBAL game_id run function caw:game/rejoin/handler_invalid

scoreboard players set @a[scores={left_game=1..}] left_game 0