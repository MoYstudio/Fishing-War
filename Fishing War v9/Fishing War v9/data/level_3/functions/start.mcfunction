execute if score #SYSTEM datapack_run matches 1 run effect give @a[team=DB] strength 999999 200 true
execute if score #SYSTEM datapack_run matches 1 run effect give @a[team=HH] strength 999999 200 true
execute if score #SYSTEM datapack_run matches 1 run effect give @a[team=DB] glowing 999999 255 true
execute if score #SYSTEM datapack_run matches 1 run effect give @a[team=HH] glowing 999999 255 true
execute if score #SYSTEM datapack_run matches 1 run effect give @a[team=HH] resistance 20 255 true
execute if score #SYSTEM datapack_run matches 1 run effect give @a[team=DB] resistance 20 255 true

execute if score #SYSTEM datapack_run matches 1 run execute if score #LEVEL gamemode_way matches 1 run title @a[team=DB] title {"text": "[第二阶段-一击必杀]","color": "dark_red"}
execute if score #SYSTEM datapack_run matches 1 run execute if score #LEVEL gamemode_way matches 1 run title @a[team=HH] title {"text": "[第二阶段-一击必杀]","color": "dark_red"}
execute if score #SYSTEM datapack_run matches 1 run execute if score #LEVEL gamemode_way matches 0 run title @a[team=DB] title {"text": "[第三阶段-一击必杀]","color": "dark_red"}
execute if score #SYSTEM datapack_run matches 1 run execute if score #LEVEL gamemode_way matches 0 run title @a[team=HH] title {"text": "[第三阶段-一击必杀]","color": "dark_red"}
execute if score #SYSTEM datapack_run matches 1 run scoreboard players set #LEVEL gamemode_way 1

execute if score #SYSTEM datapack_run matches 1 run title @a[team=HH] subtitle [{"text": "[保护阶段]","color": "gold"},{"text": "[20s]","color": "aqua"}]
execute if score #SYSTEM datapack_run matches 1 run title @a[team=DB] subtitle [{"text": "[保护阶段]","color": "gold"},{"text": "[20s]","color": "aqua"}]
execute if score #SYSTEM datapack_run matches 1 run tellraw @a[team=HH] {"text": "\n--你已获得来自神秘力量的祝福--","color": "yellow"}
execute if score #SYSTEM datapack_run matches 1 run tellraw @a[team=DB] {"text": "\n--你已获得来自神秘力量的祝福--","color": "yellow"}
execute if score #SYSTEM datapack_run matches 1 run schedule function level_3:pro_end 20s

execute if score #SYSTEM datapack_run matches 1 run playsound entity.ender_eye.launch player @a[team=DB]
execute if score #SYSTEM datapack_run matches 1 run playsound entity.ender_eye.launch player @a[team=HH]


execute if score #SYSTEM datapack_run matches 1 run scoreboard players set #SYSTEM world_run 1
execute if score #SYSTEM datapack_run matches 1 run bossbar remove timer

execute if score #SYSTEM datapack_run matches 1 run function awor_rach:tick_set
execute if score #SYSTEM datapack_run matches 1 run function awor_rach:setup
execute if score #SYSTEM datapack_run matches 1 run tellraw @a {"text": "[进入最终阶段,箱子雨来袭!!!]","color": "red","bold": true}