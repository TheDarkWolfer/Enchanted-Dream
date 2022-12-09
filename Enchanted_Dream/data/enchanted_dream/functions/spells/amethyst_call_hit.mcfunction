kill @e[tag=ed_amethyst_call,distance=..1,limit=1,sort=nearest]
execute at @s run tag @e[tag=!ed_amethyst_call,distance=0..1,limit=1,sort=nearest] add ed_amethyst_trigger
execute as @e[tag=ed_amethyst_trigger] run scoreboard players set @s ed_amethyst_time 0
execute as @e[tag=ed_amethyst_trigger] run scoreboard players set @s ed_sneak 0
execute at @s run execute at @e[tag=ed_amethyst_trigger,distance=0..1,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..10]
execute at @s run particle block minecraft:magenta_stained_glass ~ ~1 ~ 0 0 0 0.1 10 normal
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.5 10 normal
execute at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 10 normal
execute at @e[tag=ed_amethyst_trigger] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ed_amethyst_model"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute at @e[tag=ed_amethyst_trigger] run tp @e[tag=ed_amethyst_model,limit=1,sort=nearest] ~ ~ ~ ~ 0
tag @e[tag=ed_amethyst_trigger] add ed_amethyst
tag @e[tag=ed_amethyst_trigger] remove ed_amethyst_trigger
item replace entity @e[tag=ed_amethyst_model] armor.head with minecraft:iron_shovel{CustomModelData:1}
execute as @e[tag=ed_amethyst_model] at @e[tag=ed_amethyst_model,limit=1,sort=nearest] unless entity @e[tag=ed_amethyst,distance=0..1,limit=1,sort=nearest] run kill @s
tag @e[type=armor_stand] remove ed_amethyst_trigger