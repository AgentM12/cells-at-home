# When a player joins a game that doesn't match the game they left, they can't rejoin, because they could have an unfair advantage.

tellraw @s ["",{"text":"Can't join game: Your game had already ended, you will spectate until this game is over!","color":"red"}]
clear @s
effect clear @s

function caw:gamemode/spectator