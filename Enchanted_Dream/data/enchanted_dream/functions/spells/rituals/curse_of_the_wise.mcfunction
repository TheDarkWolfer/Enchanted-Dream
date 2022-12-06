execute at @s[scores={Wand=1..}] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 candle[candles=1,lit=false] replace candle[candles=1,lit=true]
execute at @s run tag @r add curse_wise_trigger
execute as @s run title @s actionbar ["",{"text":"You placed a <","bold":true},{"text":"c","bold":true,"color":"#CA0002"},{"text":"u","bold":true,"color":"#C20002"},{"text":"r","bold":true,"color":"#AA0002"},{"text":"s","bold":true,"color":"#980002"},{"text":"e ","bold":true,"color":"#900002"},{"text":"o","bold":true,"color":"#8A0002"},{"text":"f ","bold":true,"color":"#7B0001"},{"text":"t","bold":true,"color":"#600000"},{"text":"h","bold":true,"color":"#7B0001"},{"text":"e ","bold":true,"color":"#900002"},{"text":"w","bold":true,"color":"#980002"},{"text":"i","bold":true,"color":"#AA0002"},{"text":"s","bold":true,"color":"#C20002"},{"text":"e","bold":true,"color":"#CA0002"},{"text":"> on  ","bold":true},{"selector":"@a[tag=curse_wise_trigger]","bold":true,"color":"gold"}]
execute as @s run particle minecraft:dust 0 0 0.75 1 ~ ~0.5 ~ 1 0 1 0.1 50 normal
execute as @s run particle minecraft:soul ~ ~0.5 ~ 1 0 1 0.1 10 normal
execute as @s run playsound minecraft:entity.wither.spawn ambient @a[distance=0..20]
execute as @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:coarse_dirt replace minecraft:soul_soil
execute as @a[tag=curse_wise_trigger] run playsound minecraft:entity.wither.spawn ambient @s
execute as @a[tag=curse_wise_trigger] run summon marker ~ ~ ~ {Tags:["curse_wise_detect"]}
execute as @a[tag=curse_wise_trigger] run tag @s add curse_wise
execute as @a[tag=curse_wise_trigger] run tag @s remove curse_wise_trigger