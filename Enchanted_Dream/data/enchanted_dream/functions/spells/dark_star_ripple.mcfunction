playsound minecraft:entity.warden.sonic_charge ambient @a[distance=0..60]
effect give @e[distance=0..5] instant_damage 1 0 true
particle minecraft:dust 0.75 0 0 1 ~ ~1 ~ 2.5 0 2.5 0.1 50 normal
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
summon bat ~ ~ ~ {Tags:["ed_dark_star_tendril_ripple"],Marker:1b,Invisible:1}
scoreboard players set @e[tag=ed_dark_star_tendril_ripple] ed_lifetime 0