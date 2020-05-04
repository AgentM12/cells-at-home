### Initialize constants ###

# RNG
scoreboard players set $TWO constant 2
scoreboard players set $LCG constant 1103515245
scoreboard players set $NEG_ONE constant -1

#
scoreboard players set $GLOBAL_TPS constant 20
scoreboard players set $PUSH_SPEED constant 40
scoreboard players operation $PUSH_SPEED_MIN_ONE constant = $PUSH_SPEED constant
scoreboard players remove $PUSH_SPEED_MIN_ONE constant 1
scoreboard players set $One_Thousand constant 1000
scoreboard players set $Ten constant 10

### Initialize settings ###
execute unless score $Cells_Minimum target_progress matches 0.. run scoreboard players set $Cells_Minimum target_progress 5
execute unless score $Cells_Target target_progress matches 0.. run scoreboard players set $Cells_Target target_progress 20
execute unless score $Pathogens_Target target_progress matches 0.. run scoreboard players set $Pathogens_Target target_progress 20
execute unless score $GLOBAL_SETTING respawn_timer_s matches 0.. run scoreboard players set $GLOBAL_SETTING respawn_timer_s 10
execute unless score $GLOBAL_SETTING net_cooldown matches 0.. run scoreboard players set $GLOBAL_SETTING net_cooldown 600
execute unless score $Start_Count cell_count matches 1.. run scoreboard players set $Start_Count cell_count 10

# Deliveries
execute unless score $GLOBAL_SETTING delivery_timer matches 0.. run scoreboard players set $GLOBAL_SETTING delivery_timer 120
execute unless score $Delivery_Factor sandwich_limit matches 1.. run scoreboard players set $Delivery_Factor sandwich_limit 15

execute unless score $Exponential_Factor delivery_count matches -2147483648.. run scoreboard players set $Exponential_Factor delivery_count 0
execute unless score $Linear_Factor delivery_count matches -2147483648.. run scoreboard players set $Linear_Factor delivery_count 10
execute unless score $Constant_Factor delivery_count matches -2147483648.. run scoreboard players set $Constant_Factor delivery_count -9
execute unless score $Minimum delivery_count matches 1.. run scoreboard players set $Minimum delivery_count 1

# Splitting
execute unless score $Required nutrients matches 1.. run scoreboard players set $Required nutrients 5
execute unless score $GLOBAL_SETTING split_rng_bound matches 1.. run scoreboard players set $GLOBAL_SETTING split_rng_bound 20

### Variables ###
execute unless score $State gamestate matches -2147483648.. run scoreboard players set $State gamestate 0
execute unless score $Change gamestate matches -2147483648.. run scoreboard players set $Change gamestate 0
execute unless score $GLOBAL game_id matches -2147483648.. run scoreboard players set $GLOBAL game_id 0

# Debug | Set to -1 to turn off, 1 to turn on.
execute unless score $GLOBAL debug matches -2147483648.. run scoreboard players set $GLOBAL debug -1
execute unless score $ENTITY_COUNTER debug matches -2147483648.. run scoreboard players set $ENTITY_COUNTER debug -1
execute unless score $TIMERS debug matches -2147483648.. run scoreboard players set $TIMERS debug -1
execute unless score $STATS debug matches -2147483648.. run scoreboard players set $STATS debug -1

execute unless score $PROFILE_ID debug_data matches -2147483648.. run scoreboard players set $PROFILE_ID debug_data 0

# RNG
execute unless score $LCG math matches -2147483648.. run function caw:random/uuid_reset
