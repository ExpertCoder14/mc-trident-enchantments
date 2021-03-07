data modify block -30000000 0 1602 Items[0] merge from entity @s SelectedItem
data modify block -30000000 0 1602 Items[0].tag.RiptideLvl set from entity @s SelectedItem.tag.Enchantments[{id:"minecraft:riptide"}].lvl
data remove block -30000000 0 1602 Items[0].tag.Enchantments[{id:"minecraft:riptide"}]
execute if data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} run data modify block -30000000 0 1602 Items[0].tag.display.Lore set value ['{"text":"Riptide I","color":"gray"}']
execute if data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} run data modify block -30000000 0 1602 Items[0].tag.display.Lore set value ['{"text":"Riptide II","color":"gray"}']
execute if data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} run data modify block -30000000 0 1602 Items[0].tag.display.Lore set value ['{"text":"Riptide III","color":"gray"}']

execute unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} run data modify block -30000000 0 1603 Text1 set value '[{"text":"Riptide ","color":"gray","italic":false},{"nbt":"Items[0].tag.RiptideLvl","block":"0 0 0"}]'
execute unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} unless data block -30000000 0 1602 Items[0].tag.display.Lore run data modify block -30000000 0 1602 Items[0].tag.display.Lore set value []
execute unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:1}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:2}}]} unless data block -30000000 0 1602 {Items:[{tag:{RiptideLvl:3}}]} run data modify block -30000000 0 1602 Items[0].tag.display.Lore append from block -30000000 0 1603 Text1

execute if data entity @s {SelectedItemSlot:0} run loot replace entity @s hotbar.0 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:1} run loot replace entity @s hotbar.1 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:2} run loot replace entity @s hotbar.2 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:3} run loot replace entity @s hotbar.3 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:4} run loot replace entity @s hotbar.4 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:5} run loot replace entity @s hotbar.5 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:6} run loot replace entity @s hotbar.6 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:7} run loot replace entity @s hotbar.7 1 mine -30000000 0 1602 stick{drop_contents:1b}
execute if data entity @s {SelectedItemSlot:8} run loot replace entity @s hotbar.8 1 mine -30000000 0 1602 stick{drop_contents:1b}