title @s actionbar ["",{"text":"x","obfuscated":true,"color":"#00A7FF"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_purple"},{"text":"-","bold":true,"color":"gray"},{"text":"A","color":"#8700FF"},{"text":"m","color":"#951EFF"},{"text":"e","color":"#A62BFF"},{"text":"t","color":"#BD3BFF"},{"text":"h","color":"#D14BFF"},{"text":"ys","color":"#E97DFF"},{"text":"t","color":"#D14BFF"},{"text":" C","color":"#BD3BFF"},{"text":"a","color":"#A62BFF"},{"text":"l","color":"#951EFF"},{"text":"l","color":"#8700FF"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"dark_purple"},{"text":"]","bold":true,"color":"gray"}]
execute as @s[scores={Wand=1..}] at @s run summon armor_stand ^ ^ ^1 {Tags:["ed_ray","ed_amethyst_call"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b}
execute at @s[scores={Wand=1..}] run execute as @e[tag=ed_amethyst_call,limit=1,sort=nearest] at @p run tp @s ^ ^1.5 ^1 ~ ~
execute as @s[scores={Wand=1..}] at @s run particle minecraft:dragon_breath ~ ~1.5 ~ 0.5 0.5 0.5 0.01 10 normal
execute as @s[scores={Wand=1..}] at @s run particle minecraft:electric_spark ~ ~1.5 ~ 0.5 0.5 0.5 0.1 5 normal
execute as @s[scores={Wand=1..}] at @s run particle minecraft:dust 1 1 1 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 5 normal
execute as @s[scores={Wand=1..}] at @s run playsound minecraft:block.amethyst_block.place ambient @a
execute as @s[scores={Wand=1..}] run scoreboard players remove @s ed_mana 20
execute as @s[scores={Wand=1..}] run scoreboard players reset @s Wand