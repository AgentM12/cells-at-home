execute store result score $Players count if entity @a[tag=player]
execute store result score $Red_Cells count if entity @a[tag=red_cell]
execute store result score $White_Cells count if entity @a[tag=white_cell]
execute store result score $Pathogens count if entity @a[tag=pathogen]

execute if score $Players count matches ..2 run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too little players ("},{"color":"yellow","score":{"name":"$Players","objective":"count"}},{"text":"), minimum is "},{"color":"yellow","text":"3"},{"text":"!"}]
execute if score $Players count matches 10.. run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too many players ("},{"color":"yellow","score":{"name":"$Players","objective":"count"}},{"text":"), maximum is "},{"color":"yellow","text":"9"},{"text":"!"}]

execute if score $Red_Cells count matches ..0 run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too little "},{"text":"red cells","color":"dark_red"},{"text":" ("},{"color":"yellow","score":{"name":"$Red_Cells","objective":"count"}},{"text":"), minimum is "},{"color":"yellow","text":"1"},{"text":"!"}]
execute if score $Red_Cells count matches 4.. run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too many "},{"text":"red cells","color":"dark_red"},{"text":" ("},{"color":"yellow","score":{"name":"$Red_Cells","objective":"count"}},{"text":"), maximum is "},{"color":"yellow","text":"3"},{"text":"!"}]

execute if score $White_Cells count matches ..0 run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too little "},{"text":"white cells","color":"white"},{"text":" ("},{"color":"yellow","score":{"name":"$White_Cells","objective":"count"}},{"text":"), minimum is "},{"color":"yellow","text":"1"},{"text":"!"}]
execute if score $White_Cells count matches 4.. run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too many "},{"text":"white cells","color":"white"},{"text":" ("},{"color":"yellow","score":{"name":"$White_Cells","objective":"count"}},{"text":"), maximum is "},{"color":"yellow","text":"3"},{"text":"!"}]

execute if score $Pathogens count matches ..0 run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too little "},{"text":"pathogens","color":"dark_purple"},{"text":" ("},{"color":"yellow","score":{"name":"$Pathogens","objective":"count"}},{"text":"), minimum is "},{"color":"yellow","text":"1"},{"text":"!"}]
execute if score $Pathogens count matches 4.. run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: Too many "},{"text":"pathogens","color":"dark_purple"},{"text":" ("},{"color":"yellow","score":{"name":"$Pathogens","objective":"count"}},{"text":"), maximum is "},{"color":"yellow","text":"3"},{"text":"!"}]

execute unless score $State gamestate matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"Unable to start game: It has already started!"}]
execute if score $State gamestate matches 0 if score $Players count matches 3..9 if score $Red_Cells count matches 1..3 if score $White_Cells count matches 1..3 if score $Pathogens count matches 1..3 run function caw:state/change/game