summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["aec_player_tracker","aec_new"],Duration:2,CustomName:'"PlayerDeathTracker"',Radius:0f}
scoreboard players operation @e[type=area_effect_cloud,tag=aec_new,limit=1] id = @s player_id
tp @e[type=area_effect_cloud,tag=aec_new,limit=1] @s
tag @e[type=area_effect_cloud,tag=aec_new,limit=1] remove aec_new