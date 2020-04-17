
# lcg.random(1, MAX) # inclusive
scoreboard players set $rng_in math 1
scoreboard players operation $rng_in1 math = $GLOBAL_SETTING split_rng_bound
function caw:random/range_lcg

# if 1 then split
execute if score $rng_out math matches 1 run function caw:game/cell_split/split