item replace block -30000000 0 1602 container.0 from entity @s weapon.mainhand

# data modify block -30000000 0 1602 Items[0].tag.RiptideLvl set from entity @s SelectedItem.tag.Enchantments[{id:"minecraft:riptide"}].lvl
item modify block -30000000 0 1602 container.0 trident:ench_lvl_to_custom_tag

data remove block -30000000 0 1602 Items[0].tag.Enchantments[{id:"minecraft:riptide"}]

execute if data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} run item modify block -30000000 0 1602 container.0 trident:lore_lvl_1
execute if data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} run item modify block -30000000 0 1602 container.0 trident:lore_lvl_2
execute if data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} run item modify block -30000000 0 1602 container.0 trident:lore_lvl_3

execute unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} run data modify block -30000000 0 1603 Text1 set value '[{"text":"Riptide ","color":"gray","italic":false},{"nbt":"Items[0].tag.RiptideLvl","block":"0 0 0"}]'
execute unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} unless data block -30000000 0 1602 Items[0].tag.display.Lore run data modify block -30000000 0 1602 Items[0].tag.display.Lore set value []
execute unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} run data modify block -30000000 0 1602 Items[0].tag.display.Lore append from block -30000000 0 1603 Text1

execute if data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.0 from block -30000000 0 1602 container.0
execute if data entity @s {SelectedItemSlot:1} run item replace entity @s hotbar.1 from block -30000000 0 1602 container.1
execute if data entity @s {SelectedItemSlot:2} run item replace entity @s hotbar.2 from block -30000000 0 1602 container.2
execute if data entity @s {SelectedItemSlot:3} run item replace entity @s hotbar.3 from block -30000000 0 1602 container.3
execute if data entity @s {SelectedItemSlot:4} run item replace entity @s hotbar.4 from block -30000000 0 1602 container.4
execute if data entity @s {SelectedItemSlot:5} run item replace entity @s hotbar.5 from block -30000000 0 1602 container.5
execute if data entity @s {SelectedItemSlot:6} run item replace entity @s hotbar.6 from block -30000000 0 1602 container.6
execute if data entity @s {SelectedItemSlot:7} run item replace entity @s hotbar.7 from block -30000000 0 1602 container.7
execute if data entity @s {SelectedItemSlot:8} run item replace entity @s hotbar.8 from block -30000000 0 1602 container.8