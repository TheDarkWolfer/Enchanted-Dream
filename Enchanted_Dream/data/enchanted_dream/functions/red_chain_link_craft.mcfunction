fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air
kill @e[type=end_crystal,limit=1,sort=nearest]
summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:entity.wither.spawn ambient @a[distance=0..10]
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["ed_holder","ed_red_chain_holder"]}
item replace entity @e[tag=ed_red_chain_holder] armor.head with minecraft:chain{display:{Lore:'{"text":"A piece of magical chain. Currently non active"}',Name:'{"text":"Red Chain Link","color":"dark_red","bold":true}'},Red_Chain_Link:1b} 1