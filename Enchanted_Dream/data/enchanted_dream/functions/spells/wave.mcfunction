title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#009AFF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_blue"},{"text":"-","bold":true,"color":"gray"},{"text":"W","color":"#000BFF"},{"text":"a","color":"#2029FF"},{"text":"v","color":"#3255FF"},{"text":"e","color":"#4581FF"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_blue"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] at @s run summon armor_stand ^ ^1 ^2 {Tags:["ed_ray","ed_wave"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_wave,limit=1,sort=nearest] at @p run tp @s ^ ^1 ^1 ~ ~
execute as @s[scores={Wand=1..}] at @s run particle minecraft:dripping_water ~ ~ ~ 0.25 0.25 0.25 0.1 25 normal
execute as @s[scores={Wand=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0.1 5 normal
execute as @s[scores={Wand=1..}] at @s run playsound minecraft:entity.generic.splash master @a[distance=0..10] ~ ~ ~ 1 1
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 5
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand