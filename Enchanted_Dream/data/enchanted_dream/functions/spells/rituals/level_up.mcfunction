execute if entity @s[scores={ed_level=1,ed_experience=100}] run particle minecraft:enchant ~ ~ ~ 1 0 1 0.1 50 normal
summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;2437522,2651799,6719955],FadeColors:[I;11250603,4408131,15790320]}],Flight:1}}}}
execute if entity @s[scores={ed_level=1,ed_experience=100..}] run scoreboard players set @s ed_level 2
execute if entity @s[scores={ed_level=2,ed_experience=200..}] run scoreboard players set @s ed_level 3
execute if entity @s[scores={ed_level=3,ed_experience=300..}] run scoreboard players set @s ed_level 4
execute if entity @s[scores={ed_level=4,ed_experience=400..}] run scoreboard players set @s ed_level 5
execute if entity @s[scores={ed_level=6,ed_experience=500..}] run scoreboard players set @s ed_level 6
execute if entity @s[scores={ed_level=5,ed_experience=1000..}] run scoreboard players set @s ed_level 7
tellraw @s ["",{"text":"\u2554[","color":"gray"},{"text":"I","color":"#FF9E00"},{"text":"n","color":"#FFA510"},{"text":"f","color":"#FEB120"},{"text":"o","color":"#FFC12F"},{"text":"r","color":"#FFD03F"},{"text":"m","color":"#FFDE55"},{"text":"a","color":"#FFD03F"},{"text":"t","color":"#FFC12F"},{"text":"i","color":"#FEB120"},{"text":"o","color":"#FFA510"},{"text":"n","color":"#FF9E00"},{"text":"]","color":"gray"},{"text":"\n"},{"text":"\u2551","color":"gray"},{"text":"Congratulations ! You have leveled up to level","bold":true},{"text":" "},{"score":{"name":"@s","objective":"ed_level"},"bold":true,"italic":true},{"text":"\n"},{"text":"\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550-","color":"gray"}]
scoreboard players set @s ed_experience 0