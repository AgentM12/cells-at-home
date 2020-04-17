# Make sure that upper bound is never smaller than lower bound. otherwise the server overloads and players time out.
execute if score $rng_in1 math < $rng_in math run scoreboard players operation $rng_in math >< $rng_in1 math

scoreboard players add $rng_in1 math 1
scoreboard players operation $rng_range math = $rng_in1 math
scoreboard players operation $rng_range math -= $rng_in math

scoreboard players operation $rng_m1 math = $rng_range math
scoreboard players remove $rng_m1 math 1
function caw:random/private/next_int_lcg
scoreboard players operation $rng_out math += $rng_in math

scoreboard players reset $rng_m1 math
scoreboard players remove $rng_in1 math 1