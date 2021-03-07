# Rain detector
execute as @e[limit=1,tag=rainDetector,nbt={Fire:0s}] at @s run scoreboard players set $rain trident_inRain 3
execute as @e[limit=1,tag=rainDetector,nbt={Fire:0s}] at @s run data modify entity @s Fire set value 30000
execute as @e[tag=rainDetector] if score $rain trident_inRain matches 1.. run scoreboard players remove $rain trident_inRain 1

execute as @a at @s if blocks ~ ~1 ~ ~ 255 ~ -30000000 0 1604 all if score $rain trident_inRain matches 1.. run scoreboard players set @s trident_inRain 1
execute as @a at @s if block ~ ~1.62 ~ minecraft:water run scoreboard players set @s trident_inRain 1
execute unless score $rain trident_inRain matches 1.. as @a at @s unless block ~ ~1 ~ minecraft:water run scoreboard players set @s trident_inRain 0
execute as @a at @s unless blocks ~ ~1 ~ ~ 255 ~ -30000000 0 1604 all unless block ~ ~1.62 ~ minecraft:water run scoreboard players set @s trident_inRain 0

execute as @a if data entity @s {SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide"}]}}} if score @s trident_inRain matches 0 unless data entity @s SelectedItem.tag.RiptideOverride run function trident:convert_trident_a
execute as @a if data entity @s {SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide"}]}}} unless score @s trident_inRain matches 0 if data entity @s SelectedItem.tag.RiptideOverride run function trident:convert_trident_a
execute as @a if data entity @s {SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide"}]}}} if score @s trident_inRain matches 0 if data entity @s SelectedItem.tag.RiptideOverride run function trident:convert_trident_a
execute as @a if data entity @s SelectedItem{id:"minecraft:trident"}.tag.RiptideLvl if score @s trident_inRain matches 1 unless data entity @s SelectedItem.tag.RiptideOverride run function trident:convert_trident_b

execute as @a unless score @s trident_override matches 0 unless data entity @s {SelectedItem:{id:"minecraft:trident"}} run tellraw @s [{"text":"Please hold the trident you wish to enable or disable Override mode on in your main hand, then run that command again.","color":"red"}]
execute as @a unless score @s trident_override matches 0 if data entity @s {SelectedItem:{id:"minecraft:trident"}} unless data entity @s SelectedItem.tag.Enchantments:[{id:"minecraft:riptide"}] unless data entity @s SelectedItem.tag.RiptideLvl run tellraw @s [{"text":"You don't have the Riptide enchantment on this trident.","color":"red"}]
execute as @a unless score @s trident_override matches 0 if data entity @s {SelectedItem:{id:"minecraft:trident"}} if data entity @s SelectedItem.tag.Enchantments:[{id:"minecraft:riptide"}] run function trident:override
execute as @a if score @s trident_override matches 1 if data entity @s SelectedItem{id:"minecraft:trident"}.tag.RiptideOverride run tellraw @s [{"text":"The Riptide Override feature is already active on your selected trident. Did you mean to ","color":"red"},{"text":"deactivate","color":"aqua","underlined":true,"clickEvent":{"action":"suggest_command","value":"/trigger trident_override add -1"}},{"text":" it instead?"}]
execute as @a if score @s trident_override matches -1 unless data entity @s SelectedItem{id:"minecraft:trident"}.tag.RiptideOverride run tellraw @s [{"text":"The Riptide Override feature is not yet active on your selected trident. Did you mean to ","color":"red"},{"text":"activate","color":"aqua","underlined":true,"clickEvent":{"action":"suggest_command","value":"/trigger trident_override add 1"}},{"text":" it instead?"}]

execute as @a if score @s trident_override matches 1 if data entity @s SelectedItem{id:"minecraft:trident"} unless data entity @s SelectedItem{id:"minecraft:trident"}.tag.RiptideOverride run function trident:override_on
execute as @a if score @s trident_override matches -1 if data entity @s SelectedItem{id:"minecraft:trident"} if data entity @s SelectedItem{id:"minecraft:trident"}.tag.RiptideOverride run function trident:override_off

scoreboard players set @a trident_override 0
scoreboard players enable @a trident_override