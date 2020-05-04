execute if score @s has_net_prev_t > @s has_net run scoreboard players operation @s net_cooldown = $GLOBAL_SETTING net_cooldown
execute if score @s has_poison_prev > @s has_poison run tag @s remove should_have_poison
