scoreboard players add @e[tag=ed_healing_circle] ed_lifetime 1
execute at @e[tag=ed_ray] run teleport @e[tag=ed_ray,limit=1,sort=nearest,distance=0..1] ^ ^ ^1
execute at @e[tag=ed_dark_star_ray] unless block ~ ~ ~ minecraft:air run function enchanted_dream:spells/dark_star_hit
scoreboard players add @e[tag=ed_healing_circle] ed_tick 1
execute at @e[tag=ed_healing_circle,scores={ed_tick=15}] run effect give @e[distance=..5] instant_health 1 0 true
execute at @e[tag=ed_healing_circle,scores={ed_tick=15}] run effect give @e[distance=..5] saturation 1 0 true
execute at @e[tag=ed_healing_circle,scores={ed_tick=15}] run playsound minecraft:block.composter.fill ambient @a[distance=..5]
execute at @e[tag=ed_healing_circle,scores={ed_tick=15}] run particle totem_of_undying ~ ~1 ~ 0.25 0.25 0.25 0.1 10 normal
execute as @e[tag=ed_healing_circle,scores={ed_tick=15}] run scoreboard players reset @s ed_tick
execute as @e[tag=ed_healing_circle,scores={ed_lifetime=900}] run effect give @e[distance=..5] regeneration 10 0 true
execute as @e[tag=ed_healing_circle,scores={ed_lifetime=900}] run kill @s
scoreboard players add @e[tag=ed_forcefield] ed_lifetime 1
scoreboard players add @e[tag=ed_forcefield] ed_tick 1
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:armor_stand,tag=ed_ray,distance=5..6] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 10 normal
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:armor_stand,tag=ed_ray,distance=5..6] run particle minecraft:enchant ~ ~ ~ 0.25 0.25 0.25 0.05 10 normal
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:armor_stand,tag=ed_ray,distance=4..5] run playsound minecraft:entity.player.attack.knockback ambient @a[distance=0..10]
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:armor_stand,tag=ed_ray,distance=4..5] run kill @e[type=minecraft:armor_stand,tag=ed_ray,distance=0..1,limit=1,sort=nearest]
execute at @e[tag=ed_forcefield] run execute at @e[type=#minecraft:impact_projectiles,distance=0..6] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 10 normal
execute at @e[tag=ed_forcefield] run execute at @e[type=#minecraft:impact_projectiles,distance=0..6] run particle minecraft:enchant ~ ~ ~ 0.25 0.25 0.25 0.05 10 normal
execute at @e[tag=ed_forcefield] run execute at @e[type=#minecraft:impact_projectiles,distance=0..5] run playsound minecraft:entity.player.attack.knockback ambient @a[distance=0..10]
execute at @e[tag=ed_forcefield] run execute at @e[type=#minecraft:impact_projectiles,distance=0..5] run kill @e[type=#minecraft:impact_projectiles,distance=0..1,limit=1,sort=nearest]
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:potion,distance=0..6] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 10 normal
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:potion,distance=0..6] run particle minecraft:enchant ~ ~ ~ 0.25 0.25 0.25 0.05 10 normal
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:potion,distance=0..5] run playsound minecraft:entity.player.attack.knockback ambient @a[distance=0..10]
execute at @e[tag=ed_forcefield] run execute at @e[type=minecraft:potion,distance=0..5] run kill @e[type=minecraft:potion,distance=0..1,limit=1,sort=nearest]
execute at @e[tag=ed_forcefield,scores={ed_tick=15}] run effect give @e[distance=..5] resistance 30 2 true
execute at @e[tag=ed_forcefield,scores={ed_tick=15}] run playsound minecraft:entity.player.attack.nodamage ambient @a[distance=0..10]
execute as @e[tag=ed_forcefield,scores={ed_tick=15}] run scoreboard players reset @s ed_tick
execute as @e[tag=ed_forcefield,scores={ed_lifetime=1200}] run kill @s
execute at @e[tag=ed_dark_star_tendril] run particle end_rod ~ ~ ~ 0 0 0 0.01 1 normal
execute at @e[tag=ed_dark_star_tendril] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.01 10 normal
execute at @e[tag=ed_dark_star_tendril] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=ed_dark_star_tendril] run effect give @s invisibility 1 0 true
scoreboard players add @e[tag=ed_dark_star_tendril] ed_lifetime 1
scoreboard players add @e[tag=ed_dark_star_tendril_ripple] ed_lifetime 1
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run effect give @e[distance=0..5] instant_damage 1 0 true
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run execute at @e[tag=ed_healing_circle,distance=0..5] run particle minecraft:enchant ~ ~ ~ 0 10 0 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run execute at @e[tag=ed_healing_circle,distance=0..5] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0.5 10 0.5 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run kill @e[tag=ed_healing_circle,distance=0..5]
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run execute at @e[tag=ed_forcefield,distance=0..5] run particle minecraft:enchant ~ ~ ~ 0 10 0 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run execute at @e[tag=ed_forcefield,distance=0..5] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0.5 10 0.5 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run kill @e[tag=ed_forcefield,distance=0..5]
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run scoreboard players set @a[distance=0..5] ed_mana 0
execute at @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run function enchanted_dream:spells/dark_star_ripple
execute as @e[tag=ed_dark_star_tendril,scores={ed_lifetime=30}] run kill @s
execute at @e[tag=ed_dark_star_tendril_ripple] run effect give @e[type=!bat,distance=0..5,nbt=!{ActiveEffects:[{Id:20b}]}] wither 5 0 true
execute at @e[tag=ed_dark_star_tendril_ripple] run particle end_rod ~ ~ ~ 0 0 0 0.01 1 normal
execute at @e[tag=ed_dark_star_tendril_ripple] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.01 10 normal
execute at @e[tag=ed_dark_star_tendril_ripple] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=ed_dark_star_tendril_ripple] run effect give @s invisibility 1 0 true
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run effect give @e[distance=0..5] instant_damage 1 0 true
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run execute at @e[tag=ed_healing_circle,distance=0..5] run particle minecraft:enchant ~ ~ ~ 0 10 0 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run execute at @e[tag=ed_healing_circle,distance=0..5] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0.5 10 0.5 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run kill @e[tag=ed_healing_circle,distance=0..5]
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run execute at @e[tag=ed_forcefield,distance=0..5] run particle minecraft:enchant ~ ~ ~ 0 10 0 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run execute at @e[tag=ed_forcefield,distance=0..5] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0.5 10 0.5 0.1 50 normal
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run kill @e[tag=ed_forcefield,distance=0..5]
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run scoreboard players set @a[distance=0..5] ed_mana 0
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run execute at @e[distance=0..5] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run effect give @e[distance=0..5,type=!bat] instant_damage 1 1 true
execute as @e[tag=ed_dark_star_tendril_ripple,scores={ed_lifetime=30}] run kill @s
execute at @e[tag=ed_dark_star_ray] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0 0 0 0.1 10 normal
execute at @e[tag=ed_dark_star_ray] run particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
execute at @e[tag=ed_null_ray] run particle minecraft:dust 0 0 0 2 ~ ~ ~ 0 0 0 0.1 10 normal
execute at @e[tag=ed_null_ray] as @e[tag=ed_null_ray] unless block ~ ~ ~ minecraft:air run function enchanted_dream:spells/null_zone_hit
execute at @e[tag=ed_null_zone] run stopsound @a[distance=0..30]
execute at @e[tag=ed_null_zone] run particle minecraft:enchant ~ ~ ~ 25 25 25 0.1 500 normal
execute at @e[tag=ed_null_zone] run function enchanted_dream:spells/null_zone_sphere
scoreboard players add @e[tag=ed_fireball] ed_lifetime 1
execute at @e[tag=ed_fireball] run particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=ed_fireball] run particle minecraft:lava ~ ~1 ~ 0.1 0.1 0.1 0.1 1 normal
execute at @e[tag=ed_fireball] as @e[tag=ed_fireball,limit=1,sort=nearest] unless block ~ ~ ~ minecraft:air run function enchanted_dream:spells/fireball_hit
execute at @e[tag=ed_fireball] as @e[tag=ed_fireball,limit=1,sort=nearest] if entity @e[dx=0,tag=!ed_fireball] run function enchanted_dream:spells/fireball_hit
item replace entity @e[tag=ed_fireball] armor.head with minecraft:magma_block
execute as @e[tag=ed_fireball,scores={ed_lifetime=100..}] run kill @s
execute at @e[tag=ed_freeze_ray] run teleport @e[tag=ed_freeze_ray,limit=1,sort=nearest,distance=0..1] ^ ^ ^-0.5
scoreboard players add @e[tag=ed_freeze_ray] ed_lifetime 1
execute as @e[tag=ed_freeze_ray,scores={ed_lifetime=25}] run kill @s
execute at @e[tag=ed_freeze_ray] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 1 normal
execute at @e[tag=ed_freeze_ray] run particle minecraft:dust 0.54 0.9 1 1 ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
execute at @e[tag=ed_freeze_ray] run particle minecraft:enchant ~ ~ ~ 0.5 0.25 0.25 0.25 5 normal
execute at @e[tag=ed_freeze_ray,scores={ed_lifetime=10..}] run effect give @e[dx=0] minecraft:slowness 15 2 true
execute at @e[tag=ed_freeze_ray,scores={ed_lifetime=10..}] if entity @e[dx=0,type=!armor_stand] run particle minecraft:cloud ~ ~ ~ 0.25 0.5 0.25 0.1 1 normal
execute at @e[tag=ed_freeze_ray,scores={ed_lifetime=10..}] run execute at @e[dx=0,] run kill @e[type=armor_stand,tag=ed_freeze_ray,limit=1,sort=nearest]
execute at @e[tag=ed_freeze_ray] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:frosted_ice[age=0] replace minecraft:water
execute at @e[tag=ed_freeze_ray] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:fire
execute at @e[tag=ed_freeze_ray] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:soul_fire
execute at @e[tag=ed_freeze_ray] unless block ~ ~ ~ minecraft:air run kill @s
execute at @e[tag=ed_amethyst_call] run particle minecraft:enchant ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
execute at @e[tag=ed_amethyst_call] run particle minecraft:dust 0.75 0 0.75 1 ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
execute at @e[tag=ed_amethyst_call] run particle minecraft:electric_spark ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
execute at @e[tag=ed_amethyst_call] if entity @e[dx=0,tag=!ed_amethyst_call] run execute as @e[dx=0,tag=!ed_amethyst_call] run function enchanted_dream:spells/amethyst_call_hit
execute at @e[tag=ed_amethyst_call] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_amethyst_call,limit=1,sort=nearest]
execute as @e[tag=ed_amethyst] run effect give @s minecraft:slowness 1 255 true
execute as @e[tag=ed_amethyst] run effect give @s minecraft:weakness 1 255 true
execute as @e[tag=ed_amethyst] run effect give @s minecraft:mining_fatigue 1 255 true
execute as @a[tag=ed_amethyst] run effect give @s minecraft:jump_boost 1 255 true
execute as @e[tag=ed_amethyst] run data modify entity @s Motion set value [0d, 0d, 0d]
execute at @e[tag=ed_amethyst] run execute at @e[type=ender_pearl,limit=1,sort=nearest,distance=0..3] run particle reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.5 10 normal
execute at @e[tag=ed_amethyst] run kill @e[type=ender_pearl,distance=0..3,limit=1,sort=nearest]
execute at @e[tag=ed_amethyst_model] unless entity @e[dx=0,tag=!ed_amethyst_model] run tag @e[dx=0,tag=!ed_amethyst_model] remove ed_amethyst
execute at @e[tag=ed_amethyst_model] unless entity @e[distance=..1,tag=ed_amethyst] run kill @e[tag=ed_amethyst_model,limit=1,sort=nearest]
execute as @e[tag=ed_amethyst] at @s run tp @s @e[tag=ed_amethyst_model,limit=1,sort=nearest]
execute at @e[tag=ed_amethyst] run particle minecraft:enchant ~ ~1 ~ 0.75 0.75 0.75 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~ ~1 ~1 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~ ~1 ~-1 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~1 ~1 ~ 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-1 ~1 ~ 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-0.75 ~1 ~0.75 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~0.75 ~1 ~-0.75 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~0.75 ~1 ~0.75 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-0.75 ~1 ~-0.75 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~0.90 ~1 ~-0.30 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~0.90 ~1 ~0.30 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~0.30 ~1 ~0.90 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-0.30 ~1 ~0.90 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-0.90 ~1 ~0.30 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-0.90 ~1 ~-0.30 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~-0.30 ~1 ~-0.90 0 0 0 0.1 1 normal
execute at @e[tag=ed_red_chain] run particle minecraft:dust 1 0 0 1 ~0.30 ~1 ~-0.90 0 0 0 0.1 1 normal