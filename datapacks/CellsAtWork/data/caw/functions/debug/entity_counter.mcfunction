execute store result score $_TotalCells debug_display if entity @e[type=villager,tag=cell]
execute store result score $AdultCells debug_display if entity @e[type=villager,tag=cell,scores={age=0}]
execute store result score $ChildCells debug_display if entity @e[type=villager,tag=cell,scores={age=..-1}]

execute store result score $Items debug_display if entity @e[type=item]
execute store result score $Players debug_display if entity @a[tag=player]
execute store result score $Spectators debug_display if entity @a[tag=spectator]