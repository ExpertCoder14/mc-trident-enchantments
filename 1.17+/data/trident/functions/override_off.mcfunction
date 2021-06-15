data remove block -30000000 0 1602 Items[0].tag.RiptideOverride

execute if data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.0 from block -30000000 0 1602 container.0
execute if data entity @s {SelectedItemSlot:1} run item replace entity @s hotbar.1 from block -30000000 0 1602 container.1
execute if data entity @s {SelectedItemSlot:2} run item replace entity @s hotbar.2 from block -30000000 0 1602 container.2
execute if data entity @s {SelectedItemSlot:3} run item replace entity @s hotbar.3 from block -30000000 0 1602 container.3
execute if data entity @s {SelectedItemSlot:4} run item replace entity @s hotbar.4 from block -30000000 0 1602 container.4
execute if data entity @s {SelectedItemSlot:5} run item replace entity @s hotbar.5 from block -30000000 0 1602 container.5
execute if data entity @s {SelectedItemSlot:6} run item replace entity @s hotbar.6 from block -30000000 0 1602 container.6
execute if data entity @s {SelectedItemSlot:7} run item replace entity @s hotbar.7 from block -30000000 0 1602 container.7
execute if data entity @s {SelectedItemSlot:8} run item replace entity @s hotbar.8 from block -30000000 0 1602 container.8
tellraw @s [{"text":"Override mode deactivated on held trident."}]