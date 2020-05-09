# Net Cancel
execute unless entity @s[nbt={ActiveEffects:[{Id:11b}]}] run effect give @s speed 15 2 true
effect clear @s slowness
kill @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:splash_potion",tag:{CAW_ID:"coffee"}}}]
playsound minecraft:entity.generic.drink player @s ~ ~ ~ 1 1 0
