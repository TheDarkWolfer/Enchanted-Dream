execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:8,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/healing_circle
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:7,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/forcefield
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:6,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/adaptation
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:5,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/far_step
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:4,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/ritual_check
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:3,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/gravity_shift
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:2,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/fireball
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:1,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/freeze_breath
execute as @a[tag=!ed_red_chain,nbt={SelectedItemSlot:0,Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{Catalyst:1b}}]}] run function enchanted_dream:spells/amethyst_call
execute as @a[tag=!ed_red_chain,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{CustomModelData:999}}]}] run scoreboard players set @s ed_level 0
execute as @e[tag=ed_holder,type=armor_stand] unless data entity @s ArmorItems[].id unless data entity @s HandItems[].id run kill @s
execute as @e[tag=ed_spin] at @s run tp @s ~ ~ ~ ~5 ~
clear @a[tag=!god] minecraft:carrot_on_a_stick{CustomModelData:999}
tag TheDarkWolfer add god
scoreboard players set @e ed_increment 1
scoreboard players set @a[scores={ed_level=1}] ed_experience_cap 100
scoreboard players set @a[scores={ed_level=2}] ed_experience_cap 200
scoreboard players set @a[scores={ed_level=3}] ed_experience_cap 300
scoreboard players set @a[scores={ed_level=4}] ed_experience_cap 400
scoreboard players set @a[scores={ed_level=5}] ed_experience_cap 500
scoreboard players set @a[scores={ed_level=6}] ed_experience_cap 1000
execute at @e[type=end_crystal] if block ~-1 ~-1 ~-1 minecraft:redstone_block if block ~-1 ~-1 ~1 minecraft:redstone_block if block ~1 ~-1 ~-1 minecraft:redstone_block if block ~1 ~-1 ~1 minecraft:redstone_block if block ~-1 ~-1 ~ minecraft:crying_obsidian if block ~1 ~-1 ~ minecraft:crying_obsidian if block ~ ~-1 ~-1 minecraft:crying_obsidian if block ~ ~-1 ~1 minecraft:crying_obsidian if block ~ ~-1 ~ minecraft:obsidian run function enchanted_dream:red_chain_link_craft
execute at @e[type=item,nbt={Item:{Count:8b,id:"minecraft:chain",tag:{Red_Chain_Link:1b}}}] as @e[type=item,nbt={Item:{Count:8b,id:"minecraft:chain",tag:{Red_Chain_Link:1b}}}] if block ~ ~ ~ minecraft:soul_campfire run function enchanted_dream:red_chain_craft
execute at @e[tag=ed_red_chain_holder] run particle minecraft:electric_spark ~ ~2 ~ 0 0 0 0.1 1 force
execute at @a run function enchanted_dream:level_system
function enchanted_dream:particles_effects
function enchanted_dream:spells_effects
function enchanted_dream:mana_management
function enchanted_dream:curse_effects
function enchanted_dream:consumables/consumables_main
scoreboard players set @a Wand 0
execute as @a[tag=curse_wise,scores={ed_death=1..}] run tag @s remove curse_wise
execute as @a[tag=ed_red_chain,scores={ed_death=1..}] run tag @s remove ed_red_chain
execute as @a[scores={ed_death=1..}] run scoreboard players set @s ed_death 0