particle minecraft:enchant ^-0.666 ^1 ^ 0 1 0 0.5 1 normal @a[tag=pathogen]
particle minecraft:enchant ^0.666 ^1 ^ 0 1 0 0.5 1 normal @a[tag=pathogen]

tag @a[distance=..1.5,tag=pathogen] add affected_pathogen

tellraw @a[tag=affected_pathogen] ["",{"text":"Pathogens are not allowed inside of the intestine!","color":"red"}]
tp @a[tag=affected_pathogen] ^ ^ ^2

# Teleport cells too
tp @e[type=villager] ^ ^ ^2

tag @a remove affected_pathogen