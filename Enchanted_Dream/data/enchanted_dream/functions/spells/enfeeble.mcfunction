title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#0091FA"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#A00002"},{"text":"-","bold":true,"color":"gray"},{"text":"E","color":"#B30002"},{"text":"n","color":"#8C0002"},{"text":"f","color":"#770001"},{"text":"ee","color":"#610000"},{"text":"b","color":"#770001"},{"text":"l","color":"#8C0002"},{"text":"e","color":"#B30002"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#A00002"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] at @s run summon armor_stand ^ ^1 ^2 {Tags:["ed_ray","ed_enfeeble"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_enfeeble,limit=1,sort=nearest] at @p run tp @s ^ ^1 ^1 ~ ~
execute as @s[scores={Wand=1..}] at @s run particle minecraft:smoke ^ ^1 ^2 0.1 0.1 0.1 0.1 20
execute as @s[scores={Wand=1..}] at @s run particle minecraft:dust 0.75 0 0 1 ^ ^1 ^2 0.1 0.1 0.1 0.1 10
execute as @s[scores={Wand=1..}] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=0..10]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 5
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand