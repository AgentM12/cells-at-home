# Roll a d20, if we find a natural 20 (that is it matches 0) we will split the cell
execute store result score $GLOBAL random run loot spawn ~ -1 ~ loot caw:rng/d20
execute if score $GLOBAL random matches 0 run function caw:game/cell_split/split