title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#0080FF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"color":"aqua","bold":true},{"text":"/","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-"},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_red"},{"text":"-","color":"gray"},{"text":"F","color":"#00CEFF"},{"text":"r","color":"#22D4FF"},{"text":"e","color":"#3FDFFF"},{"text":"e","color":"#56E8FF"},{"text":"z","color":"#6DF2FF"},{"text":"e b","color":"#9AFBFF"},{"text":"r","color":"#6DF2FF"},{"text":"e","color":"#56E8FF"},{"text":"a","color":"#3FDFFF"},{"text":"t","color":"#22D4FF"},{"text":"h","color":"#00CEFF"},{"text":"-","color":"gray"},{"text":"x","obfuscated":true,"color":"dark_red"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] at @s run summon minecraft:armor_stand ^ ^1 ^2 {Glowing:1,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ed_ray","ed_freeze_ray"]}
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_freeze_ray,limit=1,sort=nearest] at @p run tp @s ^ ^1.5 ^1 ~ ~
execute at @s[scores={Wand=1..}] run playsound minecraft:entity.phantom.ambient ambient @a[distance=0..5]
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 1
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand