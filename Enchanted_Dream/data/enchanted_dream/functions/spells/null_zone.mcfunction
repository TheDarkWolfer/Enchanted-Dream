title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#0084FA"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"black"},{"text":"-"},{"text":"N","color":"black"},{"text":"u","color":"#282828"},{"text":"l","color":"#363636"},{"text":"l Z","color":"#494949"},{"text":"o","color":"#363636"},{"text":"n","color":"#282828"},{"text":"e","color":"black"},{"text":"-"},{"text":"x","obfuscated":true,"color":"black"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 100
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:dust 0 0 0 5 ~ ~2 ~ 0.5 0.5 0.5 0.5 10 normal
execute as @s[scores={Wand=1..}] run execute at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 25 normal
execute as @s[scores={Wand=1..}] run execute at @s run summon armor_stand ~ ~1 ~ {Small:1,noGravity:1b,Marker:1b,Invisible:1,Tags:["ed_null_ray","ed_ray"]}
execute at @s[scores={Wand=1..}] run playsound minecraft:entity.ender_eye.death ambient @a[distance=0..50]
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_null_ray,limit=1,sort=nearest] at @p run tp @s ~ ~1.5 ~ ~ ~
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand