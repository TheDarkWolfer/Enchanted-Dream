execute at @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=0..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1] if block ~ ~-1 ~ minecraft:anvil run give @p minecraft:warped_fungus_on_a_stick{CustomModelData:4,display:{Name:'[{"text":"R","bold":true,"color":"dark_red"},{"text":"u","color":"gold"},{"text":"n","color":"dark_green"},{"text":"i","color":"green"},{"text":"c","color":"aqua"},{"text":" D","color":"blue"},{"text":"a","color":"aqua"},{"text":"g","color":"green"},{"text":"g","color":"dark_green"},{"text":"e","color":"gold"},{"text":"r","color":"dark_red","bold":true}]'},Runic_Dagger:1b,Damage:0} 1
execute at @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=0..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1] if block ~ ~-1 ~ minecraft:anvil run particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 0.05 10 normal @p
execute at @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=0..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1] if block ~ ~-1 ~ minecraft:anvil run particle minecraft:enchant ~ ~ ~ 0.25 0.25 0.25 0.05 10 normal @p
execute at @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=0..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1] if block ~ ~-1 ~ minecraft:anvil run playsound minecraft:entity.evoker.prepare_summon master @a[distance=0..10]
execute at @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=0..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1] if block ~ ~-1 ~ minecraft:anvil run kill @e[type=item,limit=3,sort=nearest]