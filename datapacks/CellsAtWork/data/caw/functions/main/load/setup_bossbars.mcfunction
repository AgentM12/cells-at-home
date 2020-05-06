
bossbar add caw:bc_target "Blood Cells"
bossbar set caw:bc_target style progress
bossbar set caw:bc_target color red
bossbar set caw:bc_target players @a[tag=player]
bossbar set caw:bc_target visible true

scoreboard players operation $Cells_Target_Bossbar target_progress = $Cells_Target target_progress
scoreboard players operation $Cells_Target_Bossbar target_progress -= $Cells_Minimum target_progress
execute store result bossbar caw:bc_target max run scoreboard players get $Cells_Target_Bossbar target_progress


bossbar add caw:pg_target "Pathogens"
bossbar set caw:pg_target style progress
bossbar set caw:pg_target color purple
bossbar set caw:pg_target players @a[tag=player]
bossbar set caw:pg_target visible true

execute store result bossbar caw:pg_target max run scoreboard players get $Pathogens_Target target_progress
