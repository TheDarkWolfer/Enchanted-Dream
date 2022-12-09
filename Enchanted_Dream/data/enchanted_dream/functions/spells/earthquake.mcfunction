title @s[scores={ed_earthquake_cd=..0}] actionbar ["",{"text":"x","obfuscated":true,"color":"#007EFA"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#663500"},{"text":"-","bold":true,"color":"gray"},{"text":"E","color":"#663500"},{"text":"a","color":"#763524"},{"text":"r","color":"#7B4C3F"},{"text":"t","color":"#7D685F"},{"text":"hq","color":"#928D89"},{"text":"u","color":"#7D685F"},{"text":"a","color":"#7B4C3F"},{"text":"k","color":"#763524"},{"text":"e","color":"#663500"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#663500"},{"text":"]","bold":true,"color":"gray"}]
title @s[scores={ed_earthquake_cd=1..}] actionbar ["",{"text":"x","obfuscated":true,"color":"#007EFA"},{"text":"[","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"ed_mana"},"bold":true,"color":"aqua"},{"text":"/","bold":true},{"score":{"name":"@s","objective":"ed_mana_cap"},"bold":true,"color":"aqua"},{"text":"]","bold":true,"color":"gray"},{"text":"-","bold":true},{"text":"[","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#663500"},{"text":"-","bold":true,"color":"gray"},{"text":"Earthquake","color":"dark_gray"},{"text":"-","bold":true,"color":"gray"},{"text":"x","obfuscated":true,"color":"#663500"},{"text":"]","bold":true,"color":"gray"}]
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run particle minecraft:block minecraft:stone ~ ~ ~ 10 1 10 0 100 force
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run particle minecraft:block minecraft:dirt ~ ~ ~ 10 1 10 0 100 force
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run tp @e[distance=1..15] ~ ~-1 ~
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run fill ~10 ~-5 ~10 ~-10 ~5 ~-10 minecraft:air replace minecraft:grass
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run fill ~10 ~-5 ~10 ~-10 ~5 ~-10 minecraft:dirt replace minecraft:grass_block
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run playsound minecraft:entity.generic.explode master @a[distance=0..50]
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ed_earthquake"]}
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run spreadplayers ~ ~ 1 10 false @e[tag=ed_earthquake,distance=0..3]
execute at @e[tag=ed_earthquake,distance=0..50] run playsound minecraft:entity.generic.explode master @a[distance=0..50]
execute at @e[tag=ed_earthquake,distance=0..50] run fill ~10 ~-5 ~10 ~-10 ~5 ~-10 minecraft:dirt replace minecraft:grass_block
execute at @e[tag=ed_earthquake,distance=0..50] run effect give @e[tag=!ed_earthquake,distance=0..10] minecraft:instant_damage 1 0 true
execute as @e[tag=ed_earthquake,distance=0..50] run kill @s
execute at @s[scores={Wand=1..,ed_earthquake_cd=..1}] run scoreboard players set @s ed_earthquake_cd 500
execute as @s[scores={Wand=1..,ed_earthquake_cd=..1}] run scoreboard players reset @s Wand