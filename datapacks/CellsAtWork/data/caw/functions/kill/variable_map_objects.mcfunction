execute as @e[type=villager,tag=!imp] at @s run tp @s ~ -1000 ~
kill @e[type=villager,tag=!imp]
kill @e[type=zombie_villager,tag=!imp]
kill @e[type=zombie,tag=!imp]
execute if score $Paused gamestate matches 0 run kill @e[type=item,tag=!imp]