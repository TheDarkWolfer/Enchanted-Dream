execute at @s run give @p minecraft:warped_fungus_on_a_stick{Wisdom_Shard:1b,Unbreakable:1,HideFlags:4,display:{Name:'[{"text":"W","bold":true,"color":"#0000ff"},{"text":"i","color":"#0033ff"},{"text":"s","color":"#0066ff"},{"text":"d","color":"#0099ff"},{"text":"o","color":"#00ccff"},{"text":"m ","color":"#00ffff"},{"text":"S","color":"#00ccff"},{"text":"h","color":"#0099ff"},{"text":"a","color":"#0066ff"},{"text":"r","color":"#0033ff"},{"text":"d"}]'},CustomModelData:1}
execute at @s run effect give @p minecraft:instant_damage 1 0 true
execute at @s run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air replace minecraft:lapis_block
execute at @s run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air replace minecraft:amethyst_cluster
execute at @s run particle minecraft:portal ~ ~ ~ 0.5 0 0.5 0.1 10 normal
execute at @s[scores={Wand=1..}] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 candle[candles=1,lit=false] replace candle[candles=1,lit=true]