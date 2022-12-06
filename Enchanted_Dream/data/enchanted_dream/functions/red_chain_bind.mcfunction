execute at @s positioned ^ ^1 ^2 run particle minecraft:dust 1 0 0 1 ~ ~0.5 ~ 0 0 0 0.1 10 normal
execute at @s positioned ^ ^1 ^2 run particle minecraft:enchant ~ ~0.5 ~ 0 0 0 0.5 10 normal
execute at @s positioned ^ ^1 ^2 run tag @a[dx=0,dy=0,dz=0] add ed_red_chain
execute at @s positioned ^ ^1 ^2 run playsound minecraft:entity.ender_eye.death master @a[distance=0..10]
execute at @s as @a[tag=ed_red_chain] run clear @s[gamemode=!creative] minecraft:warped_fungus_on_a_stick{Red_Chain:1b} 1