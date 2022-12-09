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
execute as @e[tag=ed_amethyst] run scoreboard players add @s ed_amethyst_time 1
execute at @e[tag=ed_amethyst,scores={ed_amethyst_time=1000..}] unless block ~ ~2 ~ minecraft:amethyst_cluster run tag @e[tag=ed_amethyst,limit=1,sort=nearest] remove ed_amethyst
execute at @e[tag=ed_amethyst] if block ~ ~2 ~ minecraft:amethyst_cluster run scoreboard players set @e[tag=ed_amethyst,limit=1,sort=nearest] ed_amethyst_time 990
execute at @e[tag=ed_amethyst] if block ~ ~2 ~ minecraft:amethyst_cluster run particle minecraft:portal ~ ~2 ~ 0.25 0.25 0.25 0 1 normal
execute at @e[tag=ed_amethyst,scores={ed_amethyst_time=1000..}] unless block ~ ~2 ~ minecraft:soul_lantern run tag @e[tag=ed_amethyst,limit=1,sort=nearest] remove ed_amethyst
execute at @e[tag=ed_amethyst] if block ~ ~2 ~ minecraft:soul_lantern run scoreboard players set @e[tag=ed_amethyst,limit=1,sort=nearest] ed_amethyst_time 990
execute at @e[tag=ed_amethyst] if block ~ ~2 ~ minecraft:soul_lantern run particle minecraft:soul_fire_flame ~ ~2 ~ 0.25 0.25 0.25 0 1 normal
scoreboard players set @e[type=armor_stand,tag=ed_amethyst] ed_amethyst_time 0
scoreboard players set @e[type=item,tag=ed_amethyst] ed_amethyst_time 0
execute as @e[tag=ed_amethyst,type=item] run data merge entity @s {Age:0,NoGravity:1b}
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
execute at @e[tag=ed_rock_shard] run particle minecraft:block minecraft:stone ~ ~ ~ 0 0 0 0.1 10 normal
execute at @e[tag=ed_rock_shard] run particle minecraft:block minecraft:dirt ~ ~ ~ 0 0 0 0.1 10 normal
execute at @e[tag=ed_rock_shard] run particle minecraft:dust 0.5 0.1 0 1 ~ ~ ~ 0.25 0.25 0.25 0.1 5 normal
scoreboard players add @e[tag=ed_rock_shard] ed_lifetime 1
execute at @e[tag=ed_rock_shard] if entity @e[dx=0,tag=!ed_rock_shard] run effect give @e[dx=0,tag=!ed_rock_shard] minecraft:instant_damage 1 0 true
execute at @e[tag=ed_rock_shard] if entity @e[dx=0,tag=!ed_rock_shard] run playsound minecraft:block.glass.break ambient @a[distance=..10]
execute at @e[tag=ed_rock_shard] if entity @e[dx=0,tag=!ed_rock_shard] run kill @e[tag=ed_rock_shard,limit=1,sort=nearest]
execute at @e[tag=ed_rock_shard] if block ~ ~ ~ minecraft:amethyst_cluster run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ed_rock_shard] if block ~ ~ ~ minecraft:soul_lantern run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ed_rock_shard] unless block ~ ~ ~ minecraft:air run scoreboard players add @e[tag=ed_rock_barrier,distance=0..3] ed_lifetime 100
execute at @e[tag=ed_rock_shard] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_rock_shard,limit=1,sort=nearest]
execute as @e[tag=ed_rock_shard,scores={ed_lifetime=50..}] run kill @s
scoreboard players add @e[tag=ed_block] ed_lifetime 1
execute as @e[tag=ed_block,scores={ed_lifetime=10..}] run kill @s
execute at @e[tag=ed_block] run particle minecraft:crit ~ ~1 ~ 0.25 0.5 0.25 0.1 1 normal
scoreboard players add @e[tag=ed_life_drain] ed_lifetime 1
execute at @e[tag=ed_life_drain] run particle minecraft:enchant ~ ~1 ~ 0.1 0.1 0.1 0.1 1 normal
execute at @e[tag=ed_life_drain] run particle minecraft:crit ~ ~1 ~ 0.25 0.25 0.25 0.1 5 normal
execute at @e[tag=ed_life_drain] run particle minecraft:dust 0.9 0.1 0.1 1 ~ ~1 ~ 0.25 0.25 0.25 0.1 5 normal
execute at @e[tag=ed_life_drain] if entity @e[dx=0,tag=!ed_life_drain] as @e[dx=0] run effect give @e[dx=0,tag=!ed_life_drain,nbt=!{ActiveEffects:[{Id:20b}]}] minecraft:wither 2 2 true
execute at @e[tag=ed_life_drain] if entity @e[dx=0,tag=!ed_life_drain] run effect give @a[scores={ed_life_steal_time=1..},nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 5 0 true
execute at @e[tag=ed_life_drain] if entity @e[dx=0,tag=!ed_life_drain] run effect give @a[scores={ed_life_steal_time=1..},nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:saturation 1 0 true
execute at @e[tag=ed_life_drain] if entity @e[dx=0,tag=!ed_life_drain] run playsound minecraft:entity.witch.drink ambient @a[distance=0..10]
execute at @e[tag=ed_life_drain] if entity @e[dx=0,tag=!ed_life_drain] run kill @e[tag=ed_life_drain,limit=1,sort=nearest]
execute as @e[tag=ed_life_drain,scores={ed_lifetime=25..}] run kill @s
scoreboard players remove @a[scores={ed_life_steal_time=1..}] ed_life_steal_time 1
execute at @a[tag=ed_amethyst,scores={ed_sneak=3..}] if block ~ ~2 ~ minecraft:soul_lantern run tellraw @p ["",{"text":"You are currently trapped in a "},{"text":"magical amethyst","bold":true,"italic":true,"color":"dark_purple"},{"text":", and a channeling item has been placed above you, making your predicament permanent. To ensure a good experience for everyone playing with the "},{"text":"x","obfuscated":true,"color":"gold"},{"text":"<"},{"text":"E","bold":true,"color":"#003FFF"},{"text":"n","bold":true,"color":"#0039E7"},{"text":"c","bold":true,"color":"#002FD7"},{"text":"h","bold":true,"color":"#0027CD"},{"text":"a","bold":true,"color":"#001DC9"},{"text":"n","bold":true,"color":"#0016BD"},{"text":"t","bold":true,"color":"#0011B3"},{"text":"ed","bold":true,"color":"#000BAA"},{"text":" D","bold":true,"color":"#001DC9"},{"text":"r","bold":true,"color":"#0027CD"},{"text":"e","bold":true,"color":"#002FD7"},{"text":"a","bold":true,"color":"#0039E7"},{"text":"m","bold":true,"color":"#003FFF"},{"text":">"},{"text":"x","obfuscated":true,"color":"gold"},{"text":" datapack, I've implemented a failsafe to this situation : you can choose to "},{"text":"die","color":"dark_red"},{"text":", or to "},{"text":"wait ","color":"dark_green"},{"text":"a bit longer. If you choose to die, you'll be sent back to your spawnpoint, with all of your items, even if you're playing on a hardcore world. To summon this message again, simply sneak thrice. The choice is in your hands now.\n\n\n"},{"text":">","bold":true,"color":"dark_red"},{"text":"o","bold":true,"obfuscated":true,"color":"gold"},{"text":"<","bold":true,"color":"dark_red"},{"text":"RESPAWN","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function enchanted_dream:respawn"},"hoverEvent":{"action":"show_text","contents":"Warning : This will send you back to your spawn, but wether or not you keep your items is dependant on wether or not the 'keepInventory' gamerule is turned on !"}},{"text":">","bold":true,"color":"dark_red"},{"text":"o","bold":true,"obfuscated":true,"color":"gold"},{"text":"<","bold":true,"color":"dark_red"}]
execute at @a[tag=ed_amethyst,scores={ed_sneak=3..}] if block ~ ~2 ~ minecraft:amethyst_cluster run tellraw @p ["",{"text":"You are currently trapped in a "},{"text":"magical amethyst","bold":true,"italic":true,"color":"dark_purple"},{"text":", and a channeling item has been placed above you, making your predicament permanent. To ensure a good experience for everyone playing with the "},{"text":"x","obfuscated":true,"color":"gold"},{"text":"<"},{"text":"E","bold":true,"color":"#003FFF"},{"text":"n","bold":true,"color":"#0039E7"},{"text":"c","bold":true,"color":"#002FD7"},{"text":"h","bold":true,"color":"#0027CD"},{"text":"a","bold":true,"color":"#001DC9"},{"text":"n","bold":true,"color":"#0016BD"},{"text":"t","bold":true,"color":"#0011B3"},{"text":"ed","bold":true,"color":"#000BAA"},{"text":" D","bold":true,"color":"#001DC9"},{"text":"r","bold":true,"color":"#0027CD"},{"text":"e","bold":true,"color":"#002FD7"},{"text":"a","bold":true,"color":"#0039E7"},{"text":"m","bold":true,"color":"#003FFF"},{"text":">"},{"text":"x","obfuscated":true,"color":"gold"},{"text":" datapack, I've implemented a failsafe to this situation : you can choose to "},{"text":"die","color":"dark_red"},{"text":", or to "},{"text":"wait ","color":"dark_green"},{"text":"a bit longer. If you choose to die, you'll be sent back to your spawnpoint, with all of your items, even if you're playing on a hardcore world. To summon this message again, simply sneak thrice. The choice is in your hands now.\n\n\n"},{"text":">","bold":true,"color":"dark_red"},{"text":"o","bold":true,"obfuscated":true,"color":"gold"},{"text":"<","bold":true,"color":"dark_red"},{"text":"RESPAWN","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function enchanted_dream:respawn"},"hoverEvent":{"action":"show_text","contents":"Warning : This will send you back to your spawn, but wether or not you keep your items is dependant on wether or not the 'keepInventory' gamerule is turned on !"}},{"text":">","bold":true,"color":"dark_red"},{"text":"o","bold":true,"obfuscated":true,"color":"gold"},{"text":"<","bold":true,"color":"dark_red"}]
execute at @a[tag=ed_amethyst,scores={ed_sneak=3..}] run scoreboard players set @a[tag=ed_amethyst,scores={ed_sneak=3..}] ed_sneak 0
scoreboard players add @e[tag=ed_enfeeble] ed_lifetime 1
execute at @e[tag=ed_enfeeble] run particle minecraft:enchant ~ ~ ~ 0 0 0 0.1 1 normal
execute at @e[tag=ed_enfeeble] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 1 normal
execute at @e[tag=ed_enfeeble] run particle minecraft:dust 0.75 0 0 1 ~ ~ ~ 0 0 0 0.1 1 normal
execute at @e[tag=ed_enfeeble] if entity @e[tag=!ed_enfeeble,dx=0] as @e[dx=0] run effect give @e[dx=0,tag=!ed_life_drain] minecraft:weakness 10 0 true
execute at @e[tag=ed_enfeeble] if entity @e[tag=!ed_enfeeble,dx=0] as @e[dx=0] run effect give @e[dx=0,tag=!ed_life_drain] minecraft:mining_fatigue 10 0 true
execute at @e[tag=ed_enfeeble] if entity @e[tag=!ed_enfeeble,dx=0] as @e[dx=0] run effect give @e[dx=0,tag=!ed_life_drain] minecraft:nausea 10 0 true
execute at @e[tag=ed_enfeeble] if entity @e[dx=0,tag=!ed_enfeeble] run kill @e[tag=ed_enfeeble,limit=1,sort=nearest]
execute at @e[tag=ed_enfeeble] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_enfeeble,limit=1,sort=nearest]
execute as @e[tag=ed_enfeeble,scores={ed_lifetime=50..}] run kill @s
scoreboard players add @e[tag=ed_faery_dust] ed_lifetime 1
execute at @e[tag=ed_faery_dust] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0.1 5 normal
execute at @e[tag=ed_faery_dust] run particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute at @e[tag=ed_faery_dust] if entity @e[dx=0,tag=!ed_faery_dust] run effect give @e[distance=..2,tag=!ed_faery_dust] minecraft:instant_damage 1 0 true
execute at @e[tag=ed_faery_dust] if entity @e[dx=0,tag=!ed_faery_dust] run particle minecraft:dust 1 1 1 2 ~ ~0.5 ~ 1.5 0.5 1.5 0.1 50 normal
execute at @e[tag=ed_faery_dust] if entity @e[dx=0,tag=!ed_faery_dust] run kill @e[tag=ed_faery_dust,limit=1,sort=nearest]
execute at @e[tag=ed_faery_dust] unless block ~ ~ ~ minecraft:air run effect give @e[distance=..2,tag=!ed_faery_dust] minecraft:instant_damage 1 0 true
execute at @e[tag=ed_faery_dust] unless block ~ ~ ~ minecraft:air run particle minecraft:dust 1 1 1 2 ~ ~0.5 ~ 1.5 0.5 1.5 0.1 50 normal
execute at @e[tag=ed_faery_dust] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_faery_dust,limit=1,sort=nearest]
execute as @e[tag=ed_faery_dust,scores={ed_lifetime=100..}] run kill @s
scoreboard players add @e[tag=ed_shining_light] ed_lifetime 1
execute at @e[tag=ed_shining_light] run particle minecraft:effect ~ ~ ~ 0.1 0.1 0.1 0.01 5 normal
execute at @e[tag=ed_shining_light] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 5 normal
execute at @e[tag=ed_shining_light] if entity @e[dx=0,tag=!ed_shining_light] run effect give @e[dx=0,tag=!ed_shining_light] minecraft:blindness 10 0 true
execute at @e[tag=ed_shining_light] if entity @e[dx=0,tag=!ed_shining_light] run effect give @e[dx=0,tag=!ed_shining_light] minecraft:night_vision 10 0 true
execute at @e[tag=ed_shining_light] if entity @e[dx=0,tag=!ed_shining_light] run playsound minecraft:entity.firework_rocket.launch ambient @a[distance=0..10]
execute at @e[tag=ed_shining_light] if entity @e[dx=0,tag=!ed_shining_light] run kill @e[tag=ed_shining_light,limit=1,sort=nearest]
execute at @e[tag=ed_shining_light] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_shining_light,limit=1,sort=nearest]
execute as @e[tag=ed_shining_light,scores={ed_lifetime=100..}] run kill @s
scoreboard players add @e[tag=ed_wave] ed_lifetime 1
execute at @e[tag=ed_wave] run particle minecraft:dripping_water ~ ~ ~ 0.25 0.25 0.25 0.1 15 normal
execute at @e[tag=ed_wave] run particle minecraft:dust 0 0 1 0.5 ~ ~ ~ 0.25 0.25 0.25 0.1 15 normal
execute at @e[tag=ed_wave] run particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0.01 1 normal
execute at @e[tag=ed_wave] if entity @e[tag=!ed_wave,dx=0] as @e[dx=0] run effect give @e[dx=0,tag=!ed_life_drain] minecraft:slowness 5 0 true
execute at @e[tag=ed_wave] if entity @e[tag=!ed_wave,dx=0] as @e[dx=0] run effect give @e[dx=0,tag=!ed_life_drain] minecraft:instant_damage 1 0 true
execute at @e[tag=ed_wave] if entity @e[tag=!ed_wave,dx=0] as @e[dx=0] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:fire
execute at @e[tag=ed_wave] if entity @e[tag=!ed_wave,dx=0] as @e[dx=0] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:soul_fire
execute at @e[tag=ed_wave] if entity @e[tag=!ed_wave,dx=0] as @e[dx=0] run playsound minecraft:entity.generic.splash ambient @a[distance=0..10]
execute at @e[tag=ed_wave] if entity @e[tag=!ed_wave,dx=0] as @e[dx=0] run kill @e[tag=ed_wave,limit=1,sort=nearest]
execute at @e[tag=ed_wave] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_wave,limit=1,sort=nearest]
execute as @e[tag=ed_wave,scores={ed_lifetime=100..}] run kill @s
execute as @e[scores={ed_cursed_flame=1..}] run effect give @s minecraft:wither 10 0 true
execute at @e[scores={ed_cursed_flame=1..}] run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.5 0.25 0.01 3 normal
execute at @e[scores={ed_cursed_flame=1..}] run particle minecraft:soul ~ ~ ~ 0.25 0.5 0.25 0.01 1 normal
execute as @e[scores={ed_cursed_flame=1..}] run scoreboard players remove @s ed_cursed_flame 1
execute as @e[tag=ed_snipe] run scoreboard players add @s ed_lifetime 1
execute at @e[tag=ed_snipe] run teleport @e[tag=ed_snipe,limit=1,sort=nearest,distance=0..1] ^ ^ ^2
execute at @e[tag=ed_snipe] run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.01 5 normal
execute at @e[tag=ed_snipe] run particle minecraft:smoke ~ ~ ~ 0.25 0.25 0.25 0.01 5 normal
execute at @e[tag=ed_snipe] if entity @e[tag=!ed_snipe,type=!item,distance=0..2] as @e[distance=0..2] run effect give @e[distance=0..2,tag=!ed_snipe] minecraft:instant_damage 1 1 true
execute at @e[tag=ed_snipe] if entity @e[tag=!ed_snipe,type=!item,distance=0..2] run kill @e[tag=ed_snipe,limit=1,sort=nearest]
execute at @e[tag=ed_snipe] unless block ~ ~ ~ minecraft:air run kill @e[tag=ed_snipe,limit=1,sort=nearest]
execute as @e[tag=ed_snipe,scores={ed_lifetime=100..}] run kill @s
execute at @e[tag=ed_rock_barrier_ray] run particle minecraft:block minecraft:stone ~ ~ ~ 0.25 0.25 0.25 0.01 5 normal
execute at @e[tag=ed_rock_barrier_ray] run particle minecraft:block minecraft:dirt ~ ~ ~ 0.25 0.25 0.25 0.01 5 normal
execute at @e[tag=ed_rock_barrier_ray] unless block ~ ~ ~ minecraft:air run function enchanted_dream:spells/rock_barrier_hit
execute at @e[tag=ed_rock_barrier] run particle minecraft:block minecraft:stone ~ ~ ~ 0.5 1 0.5 0.01 5 normal
execute at @e[tag=ed_rock_barrier] run particle minecraft:block minecraft:dirt ~ ~ ~ 0.5 1 0.5 0.01 5 normal
scoreboard players add @e[tag=ed_rock_barrier] ed_lifetime 1
execute at @e[tag=ed_rock_barrier,scores={ed_lifetime=500..}] run playsound minecraft:entity.generic.explode ambient @a[distance=0..10]
execute as @e[tag=ed_rock_barrier,scores={ed_lifetime=500..}] run kill @s
execute at @e[tag=ed_rock_barrier] run fill ~ ~ ~ ~ ~3 ~ minecraft:cobblestone replace minecraft:air
execute at @e[tag=ed_rock_barrier] run fill ~ ~ ~ ~ ~3 ~ minecraft:cobblestone replace minecraft:snow
execute at @e[tag=ed_rock_barrier] run fill ~ ~ ~ ~ ~3 ~ minecraft:cobblestone replace minecraft:grass
execute as @a[scores={ed_earthquake_cd=1}] run playsound minecraft:entity.experience_orb.pickup master @p
execute as @a[scores={ed_earthquake_cd=0..}] run scoreboard players remove @s ed_earthquake_cd 1