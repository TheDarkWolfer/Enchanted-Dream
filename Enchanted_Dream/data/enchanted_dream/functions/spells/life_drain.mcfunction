title @s actionbar ["",{"text":"x","color":"#0094FF","obfuscated":true},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","color":"gray"},{"text":"x","obfuscated":true,"color":"#A00002"},{"text":"-","color":"gray"},{"text":"L","color":"#A30002"},{"text":"i","color":"#8A0002"},{"text":"f","color":"#780001"},{"text":"e ","color":"#660000"},{"text":"D","color":"#540000"},{"text":"r","color":"#660000"},{"text":"a","color":"#780001"},{"text":"i","color":"#8A0002"},{"text":"n","color":"#A30002"},{"text":"-","color":"gray"},{"text":"x","obfuscated":true,"color":"#A00002"},{"text":"]","color":"gray"}]
execute at @s[scores={Wand=1..}] run scoreboard players set @s ed_life_steal_time 10
execute as @s[scores={Wand=1..}] at @s run summon armor_stand ^ ^ ^1 {Tags:["ed_ray","ed_life_drain"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @s[scores={Wand=1..}] run particle minecraft:dust 0.9 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 10 normal
execute at @s[scores={Wand=1..}] run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 10 normal
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_life_drain,limit=1,sort=nearest] at @p run tp @s ^ ^ ^1 ~ ~
execute at @s[scores={Wand=1..}] run playsound minecraft:entity.witch.drink ambient @a[distance=..10]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 5
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand