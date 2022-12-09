playsound minecraft:entity.generic.explode ambient @a[distance=0..10]
summon minecraft:armor_stand ^ ^ ^1 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
summon minecraft:armor_stand ^1.75 ^ ^1.75 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
summon minecraft:armor_stand ^-1.75 ^ ^1.75 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
summon minecraft:armor_stand ^0.75 ^1 ^1.5 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
summon minecraft:armor_stand ^-0.75 ^1 ^1.5 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
summon minecraft:armor_stand ^2.5 ^1 ^2 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
summon minecraft:armor_stand ^-2.5 ^1 ^2 {NoGravity:1b,Invisible:1,Marker:1b,Tags:["ed_rock_barrier"]}
execute at @e[tag=ed_rock_barrier] run fill ~ ~ ~ ~ ~2 ~ minecraft:cobblestone replace minecraft:air
execute at @e[tag=ed_rock_barrier] run fill ~ ~ ~ ~ ~2 ~ minecraft:cobblestone replace minecraft:snow
execute at @e[tag=ed_rock_barrier] run fill ~ ~ ~ ~ ~2 ~ minecraft:cobblestone replace minecraft:grass
effect give @e[tag=ed_rock_barrier] minecraft:invisibility 1 0 true
kill @e[tag=ed_rock_barrier_ray,limit=1,sort=nearest]