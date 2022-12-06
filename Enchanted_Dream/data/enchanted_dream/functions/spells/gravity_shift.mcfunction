title @a actionbar ["",{"text":"x","obfuscated":true,"color":"#01ADFF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"color":"aqua","bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_blue"},{"text":"-","bold":true,"color":"gray"},{"text":"G","color":"#004293"},{"text":"r","color":"#002CB3"},{"text":"a","color":"#0024DA"},{"text":"v","color":"#0125FF"},{"text":"i","color":"#2141FF"},{"text":"t","color":"#295FFF"},{"text":"y","color":"#3F88FF"},{"text":" s","color":"#2141FF"},{"text":"h","color":"#0125FF"},{"text":"i","color":"#0024DA"},{"text":"f","color":"#002CB3"},{"text":"t","color":"#004293"},{"text":"-","color":"gray"},{"text":"x","obfuscated":true,"color":"dark_blue"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..,ed_level=..3}] run scoreboard players remove @s ed_mana 5
execute as @s[scores={Wand=1..,ed_level=3..5}] run scoreboard players remove @s ed_mana 3
execute as @s[scores={Wand=1..,ed_level=5..7}] run scoreboard players remove @s ed_mana 3
execute at @s[scores={Wand=1..,ed_level=..3}] run effect give @e[distance=0..5] slow_falling 30 0 true
execute at @s[scores={Wand=1..,ed_level=..3}] run effect give @e[distance=0..5] jump_boost 30 2 true
execute at @s[scores={Wand=1..,ed_level=..3}] run effect give @e[distance=0..5] slowness 30 0 true
execute at @s[scores={Wand=1..,ed_level=3..5}] run effect give @e[distance=0..10] slow_falling 60 0 true
execute at @s[scores={Wand=1..,ed_level=3..5}] run effect give @e[distance=0..10] jump_boost 60 2 true
execute at @s[scores={Wand=1..,ed_level=3..5}] run effect give @e[distance=0..10] slowness 60 0 true
execute at @s[scores={Wand=1..,ed_level=5..7}] run effect give @e[distance=0..15] slow_falling 120 0 true
execute at @s[scores={Wand=1..,ed_level=5..7}] run effect give @e[distance=0..15] jump_boost 120 2 true
execute at @s[scores={Wand=1..,ed_level=5..7}] run effect give @e[distance=0..15] slowness 120 0 true
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand