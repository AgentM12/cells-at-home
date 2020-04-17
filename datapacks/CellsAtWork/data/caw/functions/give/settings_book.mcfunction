# Remove old book
clear @s minecraft:written_book{CUSTOM:{settingsBook:1b}}

# Give the new book
give @p written_book{pages:["[\"\",{\"text\":\"Respawn time = \"},{\"score\":{\"name\":\"$GLOBAL_RESPAWN_SECONDS\",\"objective\":\"respawnCountdown\"},\"color\":\"dark_green\"},{\"text\":\" sec.\"},{\"text\":\"\\n\"},{\"text\":\"-10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:give/settings/respawn_seconds/remove_10\"}},{\"text\":\" \"},{\"text\":\"-5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:give/settings/respawn_seconds/remove_5\"}},{\"text\":\" \"},{\"text\":\"-1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:give/settings/respawn_seconds/remove_1\"}},{\"text\":\" \"},{\"text\":\"+1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:give/settings/respawn_seconds/add_1\"}},{\"text\":\" \"},{\"text\":\"+5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:give/settings/respawn_seconds/add_5\"}},{\"text\":\" \"},{\"text\":\"+10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:give/settings/respawn_seconds/add_10\"}}]"],title:"Settings Book",author:CellsAtHome,CUSTOM:{settingsBook:1b}}