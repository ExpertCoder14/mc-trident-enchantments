forceload add 0 0 0 0
setblock 0 0 0 air
execute unless block 0 0 0 minecraft:shulker_box run setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b}]}
setblock 0 1 0 minecraft:oak_sign

fill 0 2 0 0 255 0 air

scoreboard objectives add trident_inRain dummy
scoreboard objectives add trident_override trigger
scoreboard objectives add trident_main dummy
scoreboard players set stop trident_main 0
kill @e[name=rain,type=armor_stand]
execute unless entity @e[name=rain,type=armor_stand] run summon armor_stand 0 255 0 {NoGravity:1b,Invulnerable:1b,Fire:32766s,CustomName:'{"text":"rain"}'}

tellraw @s [{"text":"All set up! Click "},{"text":"here","clickEvent":{"action":"suggest_command","value":"/function trident:start"},"underlined":true},{"text":" to activate."}]