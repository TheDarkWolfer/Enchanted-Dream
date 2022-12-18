execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Wisdom_Shard:1b}}}] run scoreboard players add @s ed_experience 1
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Wisdom_Shard:1b}}}] run execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.5 50 normal
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Wisdom_Shard:1b}}}] run execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Wisdom_Shard:1b}}}] run execute at @s run playsound minecraft:entity.player.levelup ambient @a[distance=0..20]
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Wisdom_Shard:1b}}}] run item replace entity @s weapon.mainhand with air
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Soul_Shard:1b}}}] run execute at @s run scoreboard players add @s ed_experience 100
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Soul_Shard:1b}}}] run execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.5 50 normal
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Soul_Shard:1b}}}] run execute at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Soul_Shard:1b}}}] run execute at @s run playsound minecraft:entity.player.breath ambient @a[distance=0..20]
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Soul_Shard:1b}}}] run execute at @s run item replace entity @s weapon.mainhand with air
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Red_Chain:1b}}}] run function enchanted_dream:red_chain_bind
execute at @a[scores={ed_consumable=1..},nbt={Inventory:[{id:"minecraft:amethyst_shard",Slot:-106b}],SelectedItem:{tag:{Runic_Dagger:1b}}}] positioned ^ ^0.5 ^1.5 run particle minecraft:enchant ~ ~1 ~ 0.1 0.1 0.1 0.1 10 normal
execute at @a[scores={ed_consumable=1..},nbt={Inventory:[{id:"minecraft:amethyst_shard",Slot:-106b}],SelectedItem:{tag:{Runic_Dagger:1b}}}] positioned ^ ^0.5 ^1.5 run tag @e[distance=0..2] remove ed_red_chain
execute at @a[scores={ed_consumable=1..},nbt={Inventory:[{id:"minecraft:amethyst_shard",Slot:-106b}],SelectedItem:{tag:{Runic_Dagger:1b}}}] positioned ^ ^0.5 ^1.5 run tag @e[distance=0..2] remove ed_amethyst
execute at @a[scores={ed_consumable=1..},nbt={Inventory:[{id:"minecraft:amethyst_shard",Slot:-106b}],SelectedItem:{tag:{Runic_Dagger:1b}}}] positioned ^ ^0.5 ^1.5 run execute as @e[distance=0..2] run data merge entity @s {NoGravity:0b}
execute at @a[scores={ed_consumable=1..},nbt={Inventory:[{id:"minecraft:amethyst_shard",Slot:-106b}],SelectedItem:{tag:{Runic_Dagger:1b}}}] positioned ^ ^0.5 ^1.5 run playsound minecraft:entity.evoker.prepare_summon master @a[distance=0..10]
execute as @a[scores={ed_consumable=1..},nbt={Inventory:[{id:"minecraft:amethyst_shard",Slot:-106b}],SelectedItem:{tag:{Runic_Dagger:1b}}}] run clear @s[gamemode=!creative] amethyst_shard 1
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Adaptation_Amulet:1b}}}] run scoreboard players set @s Wand 1
execute as @a[scores={ed_consumable=1..},nbt={SelectedItem:{tag:{Adaptation_Amulet:1b,LV1_Adaptation_Amulet:1b}}}] run clear @s warped_fungus_on_a_stick{LV1_Adaptation_Amulet:1b} 1
execute as @a[nbt={SelectedItem:{tag:{Adaptation_Amulet:1b}}}] run function enchanted_dream:spells/adaptation
execute as @a[nbt=!{Inventory:[{id:"minecraft:golden_hoe",Slot:103b,tag:{Hat:1b}}]}] run execute as @a[nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:-106b,tag:{Hat:1b}}]}] run function enchanted_dream:consumables/item_switch
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_hoe",tag:{Witchy_Hat:1b}}]}] run function enchanted_dream:consumables/witchy_hat
execute as @a[scores={ed_consumable=1..}] run scoreboard players reset @s ed_consumable
effect clear @e[team=ed_hide] minecraft:glowing