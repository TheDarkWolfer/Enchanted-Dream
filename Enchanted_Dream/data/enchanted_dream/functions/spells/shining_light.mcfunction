title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#0094FF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#FE8DFF"},{"text":"-","bold":true,"color":"gray"},{"text":"S","color":"#FE8DFF"},{"text":"h","color":"#FFA4FF"},{"text":"i","color":"#FFB2FF"},{"text":"n","color":"#FFBFFF"},{"text":"in","color":"#FFD0FF"},{"text":"g","color":"#FFE7FF"},{"text":" Li","color":"#FFD0FF"},{"text":"g","color":"#FFB2FF"},{"text":"h","color":"#FFA4FF"},{"text":"t","color":"#FE8DFF"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#FE8DFF"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] at @s run summon armor_stand ^ ^1 ^2 {Tags:["ed_ray","ed_shining_light"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_shining_light,limit=1,sort=nearest] at @p run tp @s ^ ^1.5 ^1 ~ ~
execute as @s[scores={Wand=1..}] at @s run particle minecraft:firework ^ ^1 ^2 0.1 0.1 0.1 0.01 10
execute as @s[scores={Wand=1..}] at @s run particle minecraft:electric_spark ^ ^1 ^2 0.1 0.1 0.1 0.01 5
execute as @s[scores={Wand=1..}] at @s run playsound minecraft:block.beacon.power_select master @a[distance=0..10]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 3
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand