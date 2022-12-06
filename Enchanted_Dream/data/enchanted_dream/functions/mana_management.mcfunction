title @a[scores={ed_mana=..-1},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{display:{Name:'[{"text":"C","bold":true,"italic":true,"color":"#0000ff"},{"text":"a","color":"#0033ff"},{"text":"t","color":"#0066ff"},{"text":"al","color":"#0099ff"},{"text":"y","color":"#0066ff"},{"text":"s","color":"#0033ff"},{"text":"t"}]'}}}]}] subtitle ["",{"text":"-","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"-","bold":true,"obfuscated":true,"color":"#B70000"},{"text":"-","bold":true,"obfuscated":true,"color":"#D30000"},{"text":"-","bold":true,"obfuscated":true,"color":"#ED0000"},{"text":" x ","bold":true,"color":"black"},{"text":"-","bold":true,"obfuscated":true,"color":"#ED0000"},{"text":"-","bold":true,"obfuscated":true,"color":"#D30000"},{"text":"-","bold":true,"obfuscated":true,"color":"#B70000"},{"text":"-","bold":true,"obfuscated":true,"color":"dark_red"}]
scoreboard players add @a ed_mana_tick 1
execute as @a[scores={ed_mana_tick=15,ed_mana=..4,ed_level=1}] run scoreboard players add @s ed_mana 1
execute as @a[scores={ed_mana_tick=15,ed_mana=..9,ed_level=2}] run scoreboard players add @s ed_mana 2
execute as @a[scores={ed_mana_tick=15,ed_mana=..19,ed_level=3}] run scoreboard players add @s ed_mana 3
execute as @a[scores={ed_mana_tick=15,ed_mana=..29,ed_level=4}] run scoreboard players add @s ed_mana 4
execute as @a[scores={ed_mana_tick=15,ed_mana=..39,ed_level=5}] run scoreboard players add @s ed_mana 5
execute as @a[scores={ed_mana_tick=15,ed_mana=..49,ed_level=6}] run scoreboard players add @s ed_mana 6
execute as @a[scores={ed_mana_tick=15,ed_mana=..99,ed_level=7}] run scoreboard players add @s ed_mana 7
execute as @a[scores={ed_mana_tick=15,ed_mana=5..,ed_level=1}] run scoreboard players set @s ed_mana 5
execute as @a[scores={ed_mana_tick=15,ed_mana=10..,ed_level=2}] run scoreboard players set @s ed_mana 10
execute as @a[scores={ed_mana_tick=15,ed_mana=20..,ed_level=3}] run scoreboard players set @s ed_mana 20
execute as @a[scores={ed_mana_tick=15,ed_mana=30..,ed_level=4}] run scoreboard players set @s ed_mana 30
execute as @a[scores={ed_mana_tick=15,ed_mana=40..,ed_level=5}] run scoreboard players set @s ed_mana 40
execute as @a[scores={ed_mana_tick=15,ed_mana=50..,ed_level=6}] run scoreboard players set @s ed_mana 50
execute as @a[scores={ed_mana_tick=15,ed_mana=100..,ed_level=7}] run scoreboard players set @s ed_mana 100
execute as @a[scores={ed_mana_tick=15}] run scoreboard players reset @s ed_mana_tick
execute as @a[scores={ed_mana=..-1,ed_level=1..},nbt=!{ActiveEffects:[{Id:20b}]}] run effect give @s wither 5 2 true
execute at @a[scores={ed_mana=..-1,ed_level=1..}] run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.05 10 normal
execute at @a[scores={ed_mana=..-1,ed_level=1..}] run particle minecraft:falling_dust black_concrete ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute at @a[scores={ed_mana=..-1,ed_level=1..}] run particle minecraft:dust 0.75 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal
execute as @a[scores={ed_level=1}] run scoreboard players set @s ed_mana_cap 5
execute as @a[scores={ed_level=2}] run scoreboard players set @s ed_mana_cap 10
execute as @a[scores={ed_level=3}] run scoreboard players set @s ed_mana_cap 20
execute as @a[scores={ed_level=4}] run scoreboard players set @s ed_mana_cap 30
execute as @a[scores={ed_level=5}] run scoreboard players set @s ed_mana_cap 40
execute as @a[scores={ed_level=6}] run scoreboard players set @s ed_mana_cap 50
execute as @a[scores={ed_level=7}] run scoreboard players set @s ed_mana_cap 100
execute at @a[scores={ed_mana=1..,ed_level=1}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=1..,ed_level=2}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=1..,ed_level=3}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=1..,ed_level=4}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=1..,ed_level=5}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=1..,ed_level=6}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=1..,ed_level=7}] if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players remove @p ed_mana 1
execute at @a[scores={ed_mana=..0}] if block ~ ~-1 ~ minecraft:crying_obsidian run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0.1 1 normal
execute as @a[scores={ed_level=0}] run scoreboard players set @s ed_mana 0
execute as @a[scores={ed_level=0}] run scoreboard players set @s ed_mana_cap 0