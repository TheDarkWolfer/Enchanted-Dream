title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#0094FF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#FE8DFF"},{"text":"-","bold":true,"color":"gray"},{"text":"F","color":"#FE8DFF"},{"text":"a","color":"#FFA5FF"},{"text":"e","color":"#FFBFFF"},{"text":"r","color":"#FFCFFF"},{"text":"y","color":"#FFEBFF"},{"text":" D","color":"#FFCFFF"},{"text":"u","color":"#FFBFFF"},{"text":"s","color":"#FFA5FF"},{"text":"t","color":"#FE8DFF"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#FE8DFF"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] at @s run summon armor_stand ^ ^1 ^2 {Tags:["ed_ray","ed_faery_dust"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_faery_dust,limit=1,sort=nearest] at @p run tp @s ^ ^1.5 ^1 ~ ~
execute as @s[scores={Wand=1..}] at @s run particle minecraft:dust 1 1 1 1 ^ ^1 ^2 0.1 0.1 0.1 0.01 10
execute as @s[scores={Wand=1..}] at @s run particle minecraft:end_rod ^ ^1 ^2 0.1 0.1 0.1 0.01 5
execute as @s[scores={Wand=1..}] at @s run playsound minecraft:block.beacon.power_select master @a[distance=0..10]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 2
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand