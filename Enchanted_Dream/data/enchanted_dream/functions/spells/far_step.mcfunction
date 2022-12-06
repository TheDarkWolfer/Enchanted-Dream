title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#01ADFF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"color":"aqua","bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_blue"},{"text":"-","bold":true,"color":"gray"},{"text":"F","color":"#002289"},{"text":"a","color":"#001AB1"},{"text":"r ","color":"#0114D4"},{"text":"S","color":"#0010F0"},{"text":"t","color":"#0114D4"},{"text":"e","color":"#001AB1"},{"text":"p","color":"#002289"},{"text":"-","color":"gray"},{"text":"x","obfuscated":true,"color":"dark_blue"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..,ed_level=..3}] run scoreboard players remove @s ed_mana 5
execute as @s[scores={Wand=1..,ed_level=3..5}] run scoreboard players remove @s ed_mana 3
execute as @s[scores={Wand=1..,ed_level=5..7}] run scoreboard players remove @s ed_mana 3
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:enchant ~ ~1 ~ 0.25 0.5 0.25 0.5 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run teleport @s ^ ^0.5 ^5
execute as @s[scores={Wand=1..}] run execute at @s if block ^ ^ ^6 air run teleport @s ^ ^ ^1
execute as @s[scores={Wand=1..}] run execute at @s if block ^ ^ ^7 air run teleport @s ^ ^ ^1
execute as @s[scores={Wand=1..,ed_level=3..}] run execute at @s if block ^ ^ ^8 air run teleport @s ^ ^ ^1
execute as @s[scores={Wand=1..,ed_level=3..}] run execute at @s if block ^ ^ ^9 air run teleport @s ^ ^ ^1
execute as @s[scores={Wand=1..,ed_level=5..}] run effect give @s invisibility 3 0 true
execute as @s[scores={Wand=1..,ed_level=5..}] run particle minecraft:dragon_breath ~ ~1 ~ 0.25 0.5 0.25 0.01 10 normal
execute as @s[scores={Wand=1..,ed_level=7..}] run effect give @s regeneration 5 0 true
execute as @s[scores={Wand=1..}] run effect give @s slow_falling 1 0 true
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:enchant ~ ~1 ~ 0.25 0.5 0.25 0.5 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=0..15]
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand