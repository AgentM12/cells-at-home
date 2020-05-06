tag @s add self
execute as @e[type=area_effect_cloud,tag=aec_player_tracker] at @s if score @s id = @a[tag=self,limit=1] player_id as @s at @s run function caw:game/death_particles/spawn
tag @s remove self