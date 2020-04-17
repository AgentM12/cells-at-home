# REQUIRES A SELF PLAYER TO BE BOUND
scoreboard players operation @s delivery_id = @a[tag=self] player_id
tag @s add target_cell
tag @a[tag=self] add new_target_found_for_player