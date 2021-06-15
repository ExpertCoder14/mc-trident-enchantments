data remove block 0 0 0 Items[0].tag.RiptideOverride

execute if data entity @s {SelectedItemSlot:0} run loot replace entity @s hotbar.0 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:1} run loot replace entity @s hotbar.1 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:2} run loot replace entity @s hotbar.2 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:3} run loot replace entity @s hotbar.3 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:4} run loot replace entity @s hotbar.4 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:5} run loot replace entity @s hotbar.5 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:6} run loot replace entity @s hotbar.6 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:7} run loot replace entity @s hotbar.7 1 mine 0 0 0 stick{dropContents:1b}
execute if data entity @s {SelectedItemSlot:8} run loot replace entity @s hotbar.8 1 mine 0 0 0 stick{dropContents:1b}
tellraw @s [{"text":"Override mode deactivated on held trident."}]