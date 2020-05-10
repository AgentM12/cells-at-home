
# Displays
#scoreboard objectives add score dummy [{"text":"Score","color":"gold"}]

# Timers
scoreboard objectives add net_cooldown dummy "Net Cooldown"
scoreboard objectives add target_progress dummy "Progress"
scoreboard objectives add timer dummy "General Timer"
scoreboard objectives add delivery_timer dummy "Delivery Timer"
scoreboard objectives add timeSinceDeath minecraft.custom:minecraft.time_since_death "Time Since Death"
scoreboard objectives add respawn_timer_s dummy "Respawn Timer Seconds"

# Boolean
scoreboard objectives add has_sandwich dummy [{"text":"Has a Sandwich","color":"dark_green"}]
scoreboard objectives add has_oxygen dummy [{"text":"Has Oxygen","color":"dark_green"}]
scoreboard objectives add has_weapon dummy [{"text":"Has a Weapon","color":"dark_green"}]
scoreboard objectives add has_net dummy [{"text":"Has a Net","color":"dark_green"}]
scoreboard objectives add has_poison dummy [{"text":"Has Poison","color":"dark_green"}]
scoreboard objectives add has_map dummy [{"text":"Has a Map","color":"dark_green"}]
scoreboard objectives add has_coffee dummy [{"text":"Has Coffee","color":"dark_green"}]
scoreboard objectives add is_poisoned dummy [{"text":"Is Poisoned","color":"dark_green"}]
scoreboard objectives add is_cured dummy [{"text":"Is Cured","color":"dark_green"}]

scoreboard objectives add has_net_prev_t dummy [{"text":"Had a net last tick","color":"dark_green"}]
scoreboard objectives add has_poison_prev dummy [{"text":"Had poison last tick","color":"dark_green"}]
scoreboard objectives add has_coffee_prev dummy [{"text":"Had a coffee last tick","color":"dark_green"}]
scoreboard objectives add has_cure dummy [{"text":"Number of cures this cell has","color":"dark_green"}]
scoreboard objectives add has_cure_prev dummy [{"text":"Number of cures this cell had last tick","color":"dark_green"}]
scoreboard objectives add should_have_cure teamkill.dark_purple [{"text":"Number of cures this cell should have","color":"dark_green"}]

# IDs
scoreboard objectives add id dummy [{"text":"ID","color":"aqua"}]
scoreboard objectives add game_id dummy [{"text":"Game ID","color":"aqua"}]
scoreboard objectives add player_id dummy [{"text":"Player ID","color":"aqua"}]
scoreboard objectives add delivery_id dummy [{"text":"Delivery ID","color":"aqua"}]

# Delivery
scoreboard objectives add delivery_type dummy [{"text":"Delivery Type","color":"yellow"}]
scoreboard objectives add delivery_count dummy [{"text":"Delivery Count","color":"yellow"}]
scoreboard objectives add deliveries_made dummy [{"text":"Total Deliveries Made","color":"yellow"}]
scoreboard objectives add nutrients dummy [{"text":"Nutrient Count","color":"yellow"}]
scoreboard objectives add age dummy [{"text":"Age","color":"yellow"}]

# Internal
scoreboard objectives add poison_count dummy [{"text":"Poison Count","color":"dark_gray"}]
scoreboard objectives add count dummy [{"text":"Count","color":"dark_gray"}]
scoreboard objectives add gamestate dummy [{"text":"Game State","color":"dark_gray"}]
scoreboard objectives add missing_req dummy [{"text":"Missing Requirement","color":"dark_gray"}]
scoreboard objectives add pos_x dummy [{"text":"Pos X","color":"dark_gray"}]
scoreboard objectives add pos_z dummy [{"text":"Pos Z","color":"dark_gray"}]
scoreboard objectives add constant dummy [{"text":"Constant","color":"dark_gray"}]
scoreboard objectives add split_rng_bound dummy [{"text":"Split RNG bound","color":"dark_gray"}]
scoreboard objectives add cell_count dummy [{"text":"Cell Count","color":"dark_gray"}]
scoreboard objectives add sandwich_limit dummy [{"text":"Sandwich Carry Limit","color":"dark_gray"}]
scoreboard objectives add oxygen_limit dummy [{"text":"Oxygen Carry Limit","color":"dark_gray"}]
scoreboard objectives add pain_value dummy [{"text":"Cell Pain","color":"dark_gray"}]

scoreboard objectives add debug dummy "Debug"
scoreboard objectives add debug_display dummy "Debug Display"
scoreboard objectives add debug_data dummy "Debug Data"

# Auto
scoreboard objectives add food food "Food"
scoreboard objectives add use_potion minecraft.used:minecraft.splash_potion "Used Potion"
scoreboard objectives add left_game minecraft.custom:minecraft.leave_game "Left Game"

# Random
scoreboard objectives add math dummy "Math"
