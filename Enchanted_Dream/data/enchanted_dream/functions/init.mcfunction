scoreboard objectives add Wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ed_consumable minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ed_health health
scoreboard objectives add ed_death deathCount
scoreboard objectives add ed_death_pos dummy
scoreboard objectives add ed_tick dummy
scoreboard objectives add ed_lifetime dummy
scoreboard objectives add ed_increment dummy
scoreboard objectives add ed_mana dummy
scoreboard objectives add ed_mana_cap dummy
scoreboard objectives add ed_level dummy
scoreboard objectives add ed_experience dummy
scoreboard objectives add ed_experience_cap dummy
scoreboard objectives add ed_life_steal_time dummy
scoreboard objectives add ed_amethyst_time dummy
scoreboard objectives add ed_cursed_flame dummy
scoreboard objectives add ed_earthquake_cd dummy
scoreboard objectives add ed_sneak minecraft.custom:minecraft.sneak_time
data modify storage ed_death_pos Pos set value [0.0d,0.0d,0.0d]
tellraw @a ["",{"text":"<","bold":true},{"text":"x","obfuscated":true,"color":"aqua"},{"text":"  Reloaded","italic":true},{"text":" x","obfuscated":true,"color":"aqua"},{"text":"[","bold":true},{"text":"E","italic":true,"color":"#FA0200"},{"text":"n","italic":true,"color":"#F56700"},{"text":"c","italic":true,"color":"#EF7700"},{"text":"h","italic":true,"color":"#E5A600"},{"text":"a","italic":true,"color":"#CFD200"},{"text":"n","italic":true,"color":"#5ECA00"},{"text":"t","italic":true,"color":"#01C212"},{"text":"e","italic":true,"color":"#00B98C"},{"text":"d ","italic":true,"color":"#00F4FF"},{"text":"D","italic":true,"color":"#00C1FF"},{"text":"r","italic":true,"color":"#008DFF"},{"text":"e","italic":true,"color":"#0038FF"},{"text":"a","italic":true,"color":"#4100FF"},{"text":"m","italic":true,"color":"#6300FF"},{"text":"]","bold":true},{"text":"x","obfuscated":true,"color":"aqua"},{"text":" !  "},{"text":"x","obfuscated":true,"color":"aqua"},{"text":">","bold":true}]