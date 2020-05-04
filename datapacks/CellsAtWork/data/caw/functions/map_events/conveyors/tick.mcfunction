function caw:map_events/conveyors/kill_sandwich
scoreboard players remove $CONVEYOR timer 1

# Modulo count every tick it moves
scoreboard players operation $C_PUSH timer = $CONVEYOR timer
scoreboard players operation $C_PUSH timer %= $PUSH_SPEED constant

# Set the block and spawn the sandwich
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor1
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor2
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor3
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor4
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor5
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor6
execute if score $C_PUSH timer matches 17 run function caw:map_events/conveyors/on/pre_conveyor7

# Push the blocks
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor1
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor2
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor3
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor4
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor5
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor6
execute if score $C_PUSH timer matches 10 run function caw:map_events/conveyors/on/conveyor7

# Remove the blocks
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor1
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor2
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor3
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor4
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor5
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor6
execute if score $C_PUSH timer matches 6 run function caw:map_events/conveyors/on/post_conveyor7

# Retract the pistons
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor1
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor2
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor3
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor4
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor5
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor6
execute if score $C_PUSH timer matches 0 run function caw:map_events/conveyors/off/conveyor7

# Reset
execute if score $CONVEYOR timer matches ..0 run scoreboard players set $CONVEYOR timer 160