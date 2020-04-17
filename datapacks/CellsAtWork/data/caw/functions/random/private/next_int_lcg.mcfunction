function caw:random/lcg

scoreboard players operation $temp math = $rng_out math
scoreboard players operation $rng_out math %= $rng_range math
scoreboard players operation $temp math -= $rng_out math
scoreboard players operation $temp math += $rng_m1 math
execute if score $temp math matches ..-1 run function caw:random/private/next_int_lcg