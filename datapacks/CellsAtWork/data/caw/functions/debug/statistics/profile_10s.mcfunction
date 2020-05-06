# Obtain data
scoreboard players add $TIMESTAMP debug_data 1
execute store result score $TotalCells debug_data if entity @e[type=villager]
execute store result score $AdultCells debug_data if entity @e[type=villager,tag=cell,scores={age=0}]
execute store result score $ChildCells debug_data if entity @e[type=villager,tag=cell,scores={age=..-1}]
execute store result score $InfectedCells debug_data if entity @e[type=villager,tag=infected_cell]


# Print data to chat (profiling)
# TIME | Total | Adult | Child | Infected
tellraw @a [{"text":"","color":"dark_gray"},{"text":"[DEBUG/STATS] "},{"score":{"objective":"debug_data","name":"$TIMESTAMP"},"hoverEvent":{"action":"show_text","value":"TIMESTAMP"}},{"text":" "},{"score":{"objective":"debug_data","name":"$TotalCells"},"hoverEvent":{"action":"show_text","value":"Total Cells"}},{"text":" "},{"score":{"objective":"debug_data","name":"$AdultCells"},"hoverEvent":{"action":"show_text","value":"Adult Cells"}},{"text":" "},{"score":{"objective":"debug_data","name":"$ChildCells"},"hoverEvent":{"action":"show_text","value":"Child Cells"}},{"text":" "},{"score":{"objective":"debug_data","name":"$InfectedCells"},"hoverEvent":{"action":"show_text","value":"Infected Cells"}}]