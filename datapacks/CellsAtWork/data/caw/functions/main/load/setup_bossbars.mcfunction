
bossbar add caw:bc_target "Blood Cells"
bossbar set caw:bc_target style progress

execute store result bossbar caw:bc_target max run scoreboard players get $GLOBAL_SETTING target_progress


bossbar add caw:pg_target "Pathogens"
bossbar set caw:pg_target style progress

execute store result bossbar caw:pg_target max run scoreboard players get $GLOBAL_SETTING target_progress