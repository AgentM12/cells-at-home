execute if score @s has_net_prev_t > @s has_net run scoreboard players operation @s net_cooldown = $GLOBAL_SETTING net_cooldown
execute if score @s has_poison_prev > @s has_poison run tag @s remove should_have_poison
execute if score @s has_coffee_prev > @s has_coffee run function caw:game/use_coffee
execute if score @s[tag=white_cell] has_cure_prev > @s has_cure run scoreboard players remove @s should_have_cure 1
