# mc-trident-enchantments
A data pack to work around the fact that Riptide is mutually exclusive with Channeling and Loyalty.
## About ##
Upset that Riptide prevents you from throwing a trident when you're not in the rain? Try this data pack out, and a Riptide trident will become a normal trident when you're not in the rain.

This also means that Chanelling and Loyalty will be applied when you're out if the rain, if they are present.

I've also added an override feature. In the event that you want to disable Riptide in the rain, use the override feature!
## Compatibility ##
- Only for Minecraft: Java Edition
- Works on versions 1.14+
- Singleplayer only for now, multiplayer support may be possible but not confirmed yet
- Overworld only, Nether and End not supported, please disable the data pack before entering! Planned support for other dimensions coming soon.
## Installation ##
1. Clone or download this repository using the green button above by choosing your preferred method.
2. Select one of the above folders depending on your version.
3. Copy or move that folder into your world folder's `datapacks` folder.
## Usage guidance ##
The data pack should activate immediately upon installing it. If you need to stop it, use `/datapack disable`.
1. To activate the override feature described above, **hold the trident to activate override mode on in your main hand,** then run this (works even without cheats):

       trigger trident_override add 1
2. To deactivate the override feature described above, **hold the trident to activate override mode on in your main hand,** then run this (works even without cheats):

       trigger trident_override add -1
