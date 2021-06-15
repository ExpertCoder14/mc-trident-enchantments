forceload add -30000000 1600
forceload add 0 0
setblock -30000000 0 1602 air
execute unless block -30000000 0 1602 minecraft:shulker_box run setblock -30000000 0 1602 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b}]}
setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]

fill -30000000 0 1604 -30000000 255 1604 air

scoreboard objectives add trident_inRain dummy
scoreboard objectives add trident_override trigger
scoreboard objectives add trident_main dummy
kill @e[tag=rainDetector,type=armor_stand]
execute unless entity @e[tag=rainDetector,type=armor_stand] run summon armor_stand 0 255 0 {NoGravity:1b,Invulnerable:1b,Fire:32766s,Tags:["rainDetector"]}