summon minecraft:creeper ~ ~1 ~ {ExplosionRadius:2,Fuse:0}
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:ice
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:water replace minecraft:frosted_ice
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:ice replace minecraft:packed_ice
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 25 force
particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force
playsound minecraft:entity.generic.explode master @a
scoreboard players add @e[tag=ed_rock_barrier,distance=0..3] ed_lifetime 100
kill @s