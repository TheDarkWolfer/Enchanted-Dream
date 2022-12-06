effect give @a[tag=curse_wise] minecraft:unluck 1 0 true
execute at @a[tag=curse_wise] run particle minecraft:dust 0.5 0 0 1 ~ ~2.5 ~ 0.1 0.1 0.1 0.1 1 normal
execute at @a[tag=curse_wise] run particle minecraft:electric_spark ~ ~2.5 ~ 0.1 0.1 0.1 0.1 1 normal
execute at @a[tag=curse_wise,limit=1,sort=nearest] run tp @e[tag=curse_wise_detect,limit=1,sort=nearest] ~ ~ ~
execute at @e[tag=curse_wise_detect] as @e[tag=curse_wise_detect] run execute unless entity @p[tag=curse_wise,distance=0..1] run function enchanted_dream:curse_wise_death
execute at @e[tag=curse_wise_detect] unless entity @a[tag=curse_wise,distance=0..1] run kill @e[tag=curse_wise_detect,distance=0..1,limit=1,sort=nearest]
execute at @e[tag=ed_curse_wise_item] run particle minecraft:dust 1 1 1 0.75 ~ ~1.75 ~ 0.1 0.1 0.1 0.5 1 normal