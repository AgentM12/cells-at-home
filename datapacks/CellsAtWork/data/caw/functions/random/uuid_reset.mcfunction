summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score $LCG math run data get entity @e[type=minecraft:area_effect_cloud,tag=uuid,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[type=minecraft:area_effect_cloud,tag=uuid]