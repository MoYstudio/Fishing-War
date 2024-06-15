#警告检测
execute if score #SYSTEM datapack_run matches 1 run execute as @a[x=100000,y=210,z=100000,dx=-200000,dy=10,dz=-200000] at @s run function party:highw
execute if score #SYSTEM datapack_run matches 1 run execute as @a[scores={player_hp=0..2}] run function party:hpw

#边界运行
execute if score #SYSTEM datapack_run matches 1 if score #SYSTEM world_run matches 2 if score #SYSTEM time_add matches 40 run worldborder add -0.023
execute if score #SYSTEM datapack_run matches 1 if score #SYSTEM world_run matches 2 if score #SYSTEM time_add matches 30 run worldborder add -0.032
execute if score #SYSTEM datapack_run matches 1 if score #SYSTEM world_run matches 2 if score #SYSTEM time_add matches 15 run worldborder add -0.06

#多人-阵亡模式锁定
execute if score #SYSTEM datapack_run matches 1 run gamemode spectator @a[tag=g_de]

#队伍-净化
execute if score #SYSTEM datapack_run matches 1 run execute as @a[tag=g_de] run clear @s
execute if score #SYSTEM datapack_run matches 1 run execute as @a[team=sp] run clear @s
execute if score #SYSTEM datapack_run matches 1 run execute as @a[team=sp] run effect give @s night_vision 30 255 true
execute if score #SYSTEM datapack_run matches 1 run execute as @a[tag=g_de] run effect give @s night_vision 30 255 true

#队伍分配平衡系统
execute if score #SYSTEM datapack_run matches 1 run execute if score #DB team_unfair_fix matches 1 run execute as @a[team=DB] run effect give @s resistance 20 2 true
execute if score #SYSTEM datapack_run matches 1 run execute if score #HH team_unfair_fix matches 1 run execute as @a[team=HH] run effect give @s resistance 20 2 true

#玩家检测
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=HH,tag=g_on] run execute store result score @p[team=DB,tag=g_on] x run data get entity @p[team=DB,tag=g_on] Pos[0]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=DB,tag=g_on] run execute store result score @p[team=HH,tag=g_on] x run data get entity @p[team=HH,tag=g_on] Pos[0]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=HH,tag=g_on] run execute store result score @p[team=DB,tag=g_on] y run data get entity @p[team=DB,tag=g_on] Pos[1]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=DB,tag=g_on] run execute store result score @p[team=HH,tag=g_on] y run data get entity @p[team=HH,tag=g_on] Pos[1]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=HH,tag=g_on] run execute store result score @p[team=DB,tag=g_on] z run data get entity @p[team=DB,tag=g_on] Pos[2]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=DB,tag=g_on] run execute store result score @p[team=HH,tag=g_on] z run data get entity @p[team=HH,tag=g_on] Pos[2]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute as @a[team=HH,tag=g_on] run title @s actionbar [{"text": "[","color": "dark_blue"},{"selector":"@p[team=DB,tag=g_on]","bold": true},{"text": "]","color": "dark_blue"},{"text": "  位置:","color": "gold","bold": true},{"text": "[","color": "dark_blue"},{"score":{"objective":"x","name":"@p[team=DB,tag=g_on]"},"color": "dark_purple","bold": true},{"text": ",","color": "gray"},{"score":{"objective":"y","name":"@p[team=DB,tag=g_on]"},"color": "light_purple","bold": true},{"text": ",","color": "gray"},{"score":{"objective":"z","name":"@p[team=DB,tag=g_on]"},"color": "dark_purple","bold": true},{"text": "]","color": "dark_blue"}]
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute as @a[team=DB,tag=g_on] run title @s actionbar [{"text": "[","color": "dark_blue"},{"selector":"@p[team=HH,tag=g_on]","bold": true},{"text": "]","color": "dark_blue"},{"text": "  位置:","color": "gold","bold": true},{"text": "[","color": "dark_blue"},{"score":{"objective":"x","name":"@p[team=HH,tag=g_on]"},"color": "dark_purple","bold": true},{"text": ",","color": "gray"},{"score":{"objective":"y","name":"@p[team=HH,tag=g_on]"},"color": "light_purple","bold": true},{"text": ",","color": "gray"},{"score":{"objective":"z","name":"@p[team=HH,tag=g_on]"},"color": "dark_purple","bold": true},{"text": "]","color": "dark_blue"}]
#玩家发光
execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 2 run effect give @a[tag=g_on] glowing 20 255 true

#test
#execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=DB,tag=g_on] run execute store result score @p[team=DB,tag=g_on] x run data get entity @p[team=DB,tag=g_on] Pos[0]
#execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=DB,tag=g_on] run execute store result score @p[team=DB,tag=g_on] y run data get entity @p[team=DB,tag=g_on] Pos[1]
#execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute at @a[team=DB,tag=g_on] run execute store result score @p[team=DB,tag=g_on] z run data get entity @p[team=DB,tag=g_on] Pos[2]
#execute if score #SYSTEM datapack_run matches 1 run execute if score #player_excuses player_excuses matches 1 run execute as @a[team=DB,tag=g_on] run title @s actionbar [{"text": "[","color": "dark_blue"},{"selector":"@p[team=DB,tag=g_on]","bold": true},{"text": "]","color": "dark_blue"},{"text": "  位置:","color": "gold","bold": true},{"text": "[","color": "dark_blue"},{"score":{"objective":"x","name":"@p[team=DB,tag=g_on]"},"color": "light_purple","bold": true},{"text": ",","color": "gray"},{"score":{"objective":"y","name":"@p[team=DB,tag=g_on]"},"color": "light_purple","bold": true},{"text": ",","color": "gray"},{"score":{"objective":"z","name":"@p[team=DB,tag=g_on]"},"color": "light_purple","bold": true},{"text": "]","color": "dark_blue"}]

#观察者模式锁定
gamemode spectator @a[team=sp]

#道具运行
function dj:tick


#箱子雨
execute if score #SYSTEM datapack_run matches 1 run execute if score #SYSTEM chest_rain matches 2 run function awor_rach:main