execute as @s[team=!red_cells] at @s if block ~ ~-1 ~ minecraft:red_concrete run function caw:lobby/team_red_cells
execute as @s[team=!white_cells] at @s if block ~ ~-1 ~ minecraft:white_concrete run function caw:lobby/team_white_cells
execute as @s[team=!pathogens] at @s if block ~ ~-1 ~ minecraft:purple_concrete run function caw:lobby/team_pathogens
execute as @s[tag=player] at @s if block ~ ~-1 ~ minecraft:black_concrete run function caw:lobby/team_leave_all
