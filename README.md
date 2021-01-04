# mc-trident-enchantments
A data pack to work around the fact that Riptide is mutually exclusive with Channeling and Loyalty.
## About ##

## Compatibility ##
- Only for Minecraft: Java Edition
- Works on versions 1.14+
- Singleplayer only for now, multiplayer support planned
## Installation ##
1. Clone or download this repository using the green button above by choosing your preferred method.
2. Select one of the above folders depending on your version.
3. Copy or move that folder into your world folder's `datapacks` folder.
## Usage guidance ##
1. If this is your first time running this in a new world, run the following command once to set up the needed resources:

       function trident:setup
2. To initiate the looping function run this:

       function trident:start
3. To stop the looping function run this:

       scoreboard players set stop trident_main 1
4. To activate the override feature described above, **hold the trident to activate override mode on in your main hand,** then run this (works even without cheats):

       trigger trident_override add 1
5. To deactivate the override feature described above, **hold the trident to activate override mode on in your main hand,** then run this (works even without cheats):

       trigger trident_override add -1
