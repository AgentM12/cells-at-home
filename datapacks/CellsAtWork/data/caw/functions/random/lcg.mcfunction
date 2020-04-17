# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation $LCG math *= $LCG constant
scoreboard players add $LCG math 12345
scoreboard players operation $rng_out math = $LCG math