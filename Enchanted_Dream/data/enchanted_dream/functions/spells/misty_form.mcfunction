title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#0094FF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#FE8DFF"},{"text":"-","bold":true,"color":"gray"},{"text":"M","color":"#FE8DFF"},{"text":"i","color":"#FFA8FF"},{"text":"s","color":"#FFC5FF"},{"text":"t","color":"#FFD9FF"},{"text":"y","color":"#FFE7FF"},{"text":" F","color":"#FFD9FF"},{"text":"o","color":"#FFC5FF"},{"text":"r","color":"#FFA8FF"},{"text":"m","color":"#FE8DFF"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#FE8DFF"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] run effect give @s invisibility 1 0 true
execute as @s[scores={Wand=1..}] run effect give @s night_vision 1 0 true
execute as @s[scores={Wand=1..}] run effect give @s water_breathing 1 0 true
execute as @s[scores={Wand=1..}] run effect give @s fire_resistance 1 0 true
execute as @s[scores={Wand=1..,ed_level=1..4}] run effect give @s speed 1 0 true
execute as @s[scores={Wand=1..,ed_level=1..4}] run effect give @s jump_boost 1 0 true
execute as @s[scores={Wand=1..,ed_level=1..4}] run effect give @s slow_falling 1 0 true
execute as @s[scores={Wand=1..,ed_level=1..4}] run effect give @s weakness 1 9 true
execute as @s[scores={Wand=1..,ed_level=4..}] run effect give @s speed 1 2 true
execute as @s[scores={Wand=1..,ed_level=4..}] run effect give @s jump_boost 1 2 true
execute as @s[scores={Wand=1..,ed_level=4..}] run effect give @s slow_falling 1 1 true
execute as @s[scores={Wand=1..,ed_level=4..}] run effect give @s weakness 1 9 true
execute as @s[scores={Wand=1..,ed_level=0}] run effect give @s speed 1 2 true
execute as @s[scores={Wand=1..,ed_level=0}] run effect give @s jump_boost 1 2 true
execute as @s[scores={Wand=1..,ed_level=0}] run effect give @s slow_falling 1 1 true
execute as @s[scores={Wand=1..,ed_level=0}] run effect give @s weakness 1 9 true
execute at @s[scores={Wand=1..}] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 10 force
execute at @s[scores={Wand=1..}] run particle minecraft:end_rod ~ ~1 ~ 0.25 0.5 0.25 0.01 5 force
execute as @s[scores={Wand=1..,ed_level=1..4}] run scoreboard players remove @s ed_mana 1
execute as @s[scores={Wand=1..,ed_level=4..}] run scoreboard players remove @s ed_mana 3
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand