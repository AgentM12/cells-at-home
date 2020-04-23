# Remove old book
clear @s minecraft:written_book{CAW_ID:"settings_book"}

# Give the new book
give @s written_book{pages:["[\"\",{\"text\":\"Respawn time = \"},{\"score\":{\"name\":\"$GLOBAL_SETTING\",\"objective\":\"respawn_timer_s\"},\"color\":\"dark_green\"},{\"text\":\" s\",\"color\":\"none\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/respawn_seconds/remove_10\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/respawn_seconds/remove_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/respawn_seconds/remove_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/respawn_seconds/add_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/respawn_seconds/add_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/respawn_seconds/add_10\"}},{\"text\":\"\\n\\n\",\"underlined\":false,\"color\":\"none\"},{\"text\":\"Delivery timer = \",\"color\":\"none\"},{\"score\":{\"name\":\"$GLOBAL_SETTING\",\"objective\":\"delivery_timer\"},\"color\":\"dark_green\"},{\"text\":\" s\",\"color\":\"none\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_timer/remove_10\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_timer/remove_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_timer/remove_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_timer/add_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_timer/add_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_timer/add_10\"}},{\"text\":\"\\n\\n\",\"underlined\":false,\"color\":\"none\"},{\"text\":\"Net Cooldown = \",\"color\":\"none\"},{\"score\":{\"name\":\"$GLOBAL_SETTING\",\"objective\":\"net_cooldown\"},\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/net_cooldown/remove_10\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/net_cooldown/remove_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/net_cooldown/remove_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/net_cooldown/add_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/net_cooldown/add_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/net_cooldown/add_10\"}},{\"text\":\"\\n\\n\",\"underlined\":false,\"color\":\"none\"},{\"text\":\"Split Chance = 1/\",\"color\":\"none\"},{\"score\":{\"name\":\"$GLOBAL_SETTING\",\"objective\":\"split_rng_bound\"},\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/split_chance/remove_10\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/split_chance/remove_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"-1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/split_chance/remove_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+1\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/split_chance/add_1\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+5\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/split_chance/add_5\"}},{\"text\":\" \",\"underlined\":false,\"color\":\"none\"},{\"text\":\"+10\",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/split_chance/add_10\"}},{\"text\":\"\\n\",\"underlined\":false,\"color\":\"none\"}]","[\"\",{\"text\":\"n = number of cells\\n\\nDelivery count = Exp * n^2 / 1000 + Lin * n + Const\"},{\"text\":\"\\n\\n\"},{\"text\":\"Exp = \"},{\"score\":{\"name\":\"$Exponential_Factor\",\"objective\":\"delivery_count\"},\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/exp/remove_10\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"-5\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/exp/remove_5\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"-1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/exp/remove_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/exp/add_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+5\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/exp/add_5\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+10\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/exp/add_10\"}},{\"text\":\"\\n\\n\",\"color\":\"none\",\"underlined\":false},{\"text\":\"Lin = \",\"color\":\"none\"},{\"score\":{\"name\":\"$Linear_Factor\",\"objective\":\"delivery_count\"},\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/lin/remove_10\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"-5\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/lin/remove_5\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"-1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/lin/remove_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/lin/add_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+5\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/lin/add_5\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+10\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/lin/add_10\"}},{\"text\":\"\\n\\n\",\"color\":\"none\",\"underlined\":false},{\"text\":\"Const = \",\"color\":\"none\"},{\"score\":{\"name\":\"$Constant_Factor\",\"objective\":\"delivery_count\"},\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"none\"},{\"text\":\"-10\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/const/remove_10\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"-5\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/const/remove_5\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"-1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/const/remove_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+1\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/const/add_1\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+5\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/const/add_5\"}},{\"text\":\" \",\"color\":\"none\",\"underlined\":false},{\"text\":\"+10\",\"color\":\"dark_blue\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/delivery_count/const/add_10\"}}]","[\"\",{\"text\":\"Debug Tools\\nOFF = -1, ON = 1\\nClick to Toggle\\n\\n\"},{\"text\":\"Debug Display = \",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/debug/toggle\"}},{\"score\":{\"name\":\"$GLOBAL\",\"objective\":\"debug\"},\"color\":\"dark_green\",\"underlined\":false},{\"text\":\"\\n\\n\",\"color\":\"none\"},{\"text\":\"Entity Count = \",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/debug/toggle_entities\"}},{\"score\":{\"name\":\"$ENTITY_COUNTER\",\"objective\":\"debug\"},\"color\":\"dark_green\",\"underlined\":false},{\"text\":\"\\n\\n\",\"color\":\"none\"},{\"text\":\"Timers = \",\"underlined\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function caw:settings/debug/toggle_timers\"}},{\"score\":{\"name\":\"$TIMERS\",\"objective\":\"debug\"},\"color\":\"dark_green\",\"underlined\":false}]"],title:"Settings Book",author:CellsAtWork,CAW_ID:"settings_book"}

# When updating the book, use https://legacy.minecraftjson.com/ and import the commented json bellow
# When your done editing the book, export the json and paste it bellow
# Also copy the command and past it above

# {"command":"give @s written_book{pages:%s,title:\"Settings Book\",author:CellsAtWork,CAW_ID:\"settings_book\"}","jobject":[{"text":"Respawn time = "},{"score":{"name":"$GLOBAL_SETTING","objective":"respawn_timer_s"},"color":"dark_green"},{"text":" s"},{"text":"\\n"},{"text":"-10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/respawn_seconds/remove_10"}},{"text":" "},{"text":"-5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/respawn_seconds/remove_5"}},{"text":" "},{"text":"-1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/respawn_seconds/remove_1"}},{"text":" "},{"text":"+1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/respawn_seconds/add_1"}},{"text":" "},{"text":"+5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/respawn_seconds/add_5"}},{"text":" "},{"text":"+10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/respawn_seconds/add_10"}},{"text":"\\n\\n"},{"text":"Delivery timer = "},{"score":{"name":"$GLOBAL_SETTING","objective":"delivery_timer"},"color":"dark_green"},{"text":" s"},{"text":"\\n"},{"text":"-10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_timer/remove_10"}},{"text":" "},{"text":"-5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_timer/remove_5"}},{"text":" "},{"text":"-1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_timer/remove_1"}},{"text":" "},{"text":"+1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_timer/add_1"}},{"text":" "},{"text":"+5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_timer/add_5"}},{"text":" "},{"text":"+10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_timer/add_10"}},{"text":"\\n\\n"},{"text":"Net Cooldown = "},{"score":{"name":"$GLOBAL_SETTING","objective":"net_cooldown"},"color":"dark_green"},{"text":"\\n"},{"text":"-10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/net_cooldown/remove_10"}},{"text":" "},{"text":"-5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/net_cooldown/remove_5"}},{"text":" "},{"text":"-1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/net_cooldown/remove_1"}},{"text":" "},{"text":"+1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/net_cooldown/add_1"}},{"text":" "},{"text":"+5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/net_cooldown/add_5"}},{"text":" "},{"text":"+10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/net_cooldown/add_10"}},{"text":"\\n\\n"},{"text":"Split Chance = 1/"},{"score":{"name":"$GLOBAL_SETTING","objective":"split_rng_bound"},"color":"dark_green"},{"text":"\\n"},{"text":"-10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/split_chance/remove_10"}},{"text":" "},{"text":"-5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/split_chance/remove_5"}},{"text":" "},{"text":"-1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/split_chance/remove_1"}},{"text":" "},{"text":"+1","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/split_chance/add_1"}},{"text":" "},{"text":"+5","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/split_chance/add_5"}},{"text":" "},{"text":"+10","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/split_chance/add_10"}},{"text":"\\n"},{"NEW_ITERATE_FLAG":true},{"text":"n = number of cells\\n\\nDelivery count = Exp * n^2 / 1000 + Lin * n + Const"},{"text":"\\n\\n"},{"text":"Exp = "},{"score":{"name":"$Exponential_Factor","objective":"delivery_count"},"color":"dark_green"},{"text":"\\n"},{"text":"-10","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/exp/remove_10"}},{"text":" "},{"text":"-5","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/exp/remove_5"}},{"text":" "},{"text":"-1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/exp/remove_1"}},{"text":" "},{"text":"+1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/exp/add_1"}},{"text":" "},{"text":"+5","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/exp/add_5"}},{"text":" "},{"text":"+10","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/exp/add_10"}},{"text":"\\n\\n"},{"text":"Lin = "},{"score":{"name":"$Linear_Factor","objective":"delivery_count"},"color":"dark_green"},{"text":"\\n"},{"text":"-10","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/lin/remove_10"}},{"text":" "},{"text":"-5","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/lin/remove_5"}},{"text":" "},{"text":"-1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/lin/remove_1"}},{"text":" "},{"text":"+1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/lin/add_1"}},{"text":" "},{"text":"+5","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/lin/add_5"}},{"text":" "},{"text":"+10","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/lin/add_10"}},{"text":"\\n\\n"},{"text":"Const = "},{"score":{"name":"$Constant_Factor","objective":"delivery_count"},"color":"dark_green"},{"text":"\\n"},{"text":"-10","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/const/remove_10"}},{"text":" "},{"text":"-5","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/const/remove_5"}},{"text":" "},{"text":"-1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/const/remove_1"}},{"text":" "},{"text":"+1","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/const/add_1"}},{"text":" "},{"text":"+5","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/const/add_5"}},{"text":" "},{"text":"+10","color":"dark_blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function caw:settings/delivery_count/const/add_10"}},{"NEW_ITERATE_FLAG":true},{"text":"Debug Tools\\nOFF = -1, ON = 1\\nClick to Toggle\\n\\n"},{"text":"Debug Display = ","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/debug/toggle"}},{"score":{"name":"$GLOBAL","objective":"debug"},"color":"dark_green"},{"text":"\\n\\n"},{"text":"Entity Count = ","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/debug/toggle_entities"}},{"score":{"name":"$ENTITY_COUNTER","objective":"debug"},"color":"dark_green"},{"text":"\\n\\n"},{"text":"Timers = ","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function caw:settings/debug/toggle_timers"}},{"score":{"name":"$TIMERS","objective":"debug"},"color":"dark_green"}],"jtemplate":"book"}
