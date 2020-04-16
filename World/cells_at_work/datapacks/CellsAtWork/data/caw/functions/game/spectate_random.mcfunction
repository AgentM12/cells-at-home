tag @s add self
tellraw @s [{"text":"","color":"yellow"},{"text":"You are now spectating a player. Press "},{"keybind":"key.sneak","color":"green"},{"text":" to spectate freely."}]
spectate @r[tag=player,tag=!self]
tag @s remove self