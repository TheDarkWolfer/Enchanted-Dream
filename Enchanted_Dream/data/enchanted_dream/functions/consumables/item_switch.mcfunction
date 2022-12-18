summon minecraft:armor_stand ~ ~ ~ {Invisible:0,Marker:1b,Tags:["ed_item_swap"]}
execute as @e[type=armor_stand,tag=ed_item_swap,limit=1,sort=nearest] run item replace entity @s armor.head from entity @p armor.head
execute as @s run item replace entity @s armor.head from entity @s weapon.offhand
execute as @s run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=ed_item_swap,limit=1,sort=nearest] armor.head
execute as @s run tag @e[type=armor_stand,tag=ed_item_swap,limit=1,sort=nearest] add ed_kill