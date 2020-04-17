# Initialize constants
scoreboard players set $GLOBAL_TPS constants 20

# Initialize settings
execute unless score $GLOBAL_SETTING delivery_timer matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING delivery_timer 60
execute unless score $GLOBAL_SETTING net_cooldown matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING net_cooldown 600
execute unless score $GLOBAL_SETTING target_progress matches 0..2147483647 run scoreboard players set $GLOBAL_SETTING target_progress 20
execute unless score $GLOBAL_RESPAWN_SECONDS respawnCountdown matches 0..2147483647 run scoreboard players set $GLOBAL_RESPAWN_SECONDS respawnCountdown 10

# Initialize variables
execute unless score $State gamestate matches -2147483648..2147483647 run scoreboard players set $State gamestate 0
execute unless score $Change gamestate matches -2147483648..2147483647 run scoreboard players set $Change gamestate 0
execute unless score $GLOBAL game_id matches -2147483648..2147483647 run scoreboard players set $GLOBAL game_id 0
