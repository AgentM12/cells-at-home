effect clear @s slowness
effect give @s speed 15 2 true
kill @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:splash_potion",tag:{CAW_ID:"coffee"}}}]
playsound minecraft:entity.generic.drink player @s ~ ~ ~ 1 1 0
