execute at @s run summon minecraft:lightning_bolt ~ ~ ~
execute at @s run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["ed_holder","ed_red_chain_holder"]}
execute at @s run item replace entity @e[tag=ed_red_chain_holder,limit=1,sort=nearest] armor.head with minecraft:warped_fungus_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"A chain made to bind spellcasters outside of the weave, preventing them from casting magic."}]'],Name:'[{"text":"Red Chain","bold":true,"color":"dark_red"}]'},Unbreakable:1,HideFlags:4,Red_Chain:1b} 1