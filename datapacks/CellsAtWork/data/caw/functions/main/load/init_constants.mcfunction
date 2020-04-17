# Initialize constants
scoreboard players set $TWO constant 2
scoreboard players set $LCG constant 1103515245
scoreboard players set $NEG_ONE constant -1
scoreboard players set $GLOBAL_TPS constant 20

# Initialize settings
execute unless score $GLOBAL_SETTING delivery_timer matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING delivery_timer 60
execute unless score $GLOBAL_SETTING net_cooldown matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING net_cooldown 600
execute unless score $GLOBAL_SETTING target_progress matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING target_progress 20
execute unless score $GLOBAL_SETTING respawn_timer_s matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING respawn_timer_s 10
execute unless score $GLOBAL_SETTING split_rng_bound matches 1..2147483647 run scoreboard players set $GLOBAL_SETTING split_rng_bound 20

# Initialize variables
execute unless score $State gamestate matches -2147483648..2147483647 run scoreboard players set $State gamestate 0
execute unless score $Change gamestate matches -2147483648..2147483647 run scoreboard players set $Change gamestate 0
execute unless score $GLOBAL game_id matches -2147483648..2147483647 run scoreboard players set $GLOBAL game_id 0

# Debug | Set to -1 to turn off, 1 to turn on.
execute unless score $GLOBAL debug matches -2147483648..2147483647 run scoreboard players set $GLOBAL debug -1
execute unless score $ENTITY_COUNTER debug matches -2147483648..2147483647 run scoreboard players set $ENTITY_COUNTER debug -1
execute unless score $TIMERS debug matches -2147483648..2147483647 run scoreboard players set $TIMERS debug -1

# Random
execute unless score $LCG math matches -2147483648..2147483647 run function caw:random/uuid_reset
