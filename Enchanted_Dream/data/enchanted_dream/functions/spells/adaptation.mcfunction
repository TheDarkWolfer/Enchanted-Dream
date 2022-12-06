title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#01ADFF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"green"},{"text":"-","bold":true,"color":"gray"},{"text":"A","color":"#229600"},{"text":"d","color":"#15B600"},{"text":"a","color":"#13CD01"},{"text":"p","color":"#10EA00"},{"text":"ta","color":"#10F700"},{"text":"t","color":"#10EA00"},{"text":"i","color":"#13CD01"},{"text":"o","color":"#15B600"},{"text":"n","color":"#229600"},{"text":"-","color":"gray"},{"text":"x","obfuscated":true,"color":"green"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 7 
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.05 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~ ~ water run effect give @p water_breathing 120 0 true
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~ ~ water run particle dust 0 0.1 1 1 ~ ~ ~ 0.5 0.5 0.5 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~ ~ water run playsound minecraft:entity.puffer_fish.blow_up ambient @s
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~-5 ~ air run effect give @p slow_falling 15 2 true
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~-5 ~ air run effect give @p levitation 1 255 true
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~-5 ~ air run particle cloud ~ ~ ~ 0 0 0 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] if block ~ ~-5 ~ air run playsound minecraft:block.lava.extinguish ambient @s
execute as @s[scores={Wand=1..}] run execute at @s in minecraft:the_nether run execute at @a[distance=0..5] run effect give @p fire_resistance 120 0 true
execute as @s[scores={Wand=1..}] run execute at @s in minecraft:the_nether run execute at @a[distance=0..5] run effect give @p resistance 120 0 true
execute as @s[scores={Wand=1..}] run execute at @s in minecraft:the_nether run execute at @a[distance=0..5] run particle flame ~ ~ ~ 0 0 0 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s in minecraft:the_nether run execute at @a[distance=0..5] run particle lava ~ ~ ~ 0 0 0 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s in minecraft:the_nether run execute at @a[distance=0..5] run playsound minecraft:block.fire.extinguish ambient @s
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] unless block ~ ~ ~ water unless block ~ ~-5 ~ air run effect give @p speed 120 1 true
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] unless block ~ ~ ~ water unless block ~ ~-5 ~ air run effect give @p jump_boost 120 1 true
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] unless block ~ ~ ~ water unless block ~ ~-5 ~ air run effect give @p haste 120 5 true
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] unless block ~ ~ ~ water unless block ~ ~-5 ~ air run particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] unless block ~ ~ ~ water unless block ~ ~-5 ~ air run particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run execute at @a[distance=0..5] unless block ~ ~ ~ water unless block ~ ~-5 ~ air run playsound minecraft:entity.evoker.prepare_summon ambient @s
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand