#数据包开始运行
scoreboard players set #SYSTEM datapack_run 1

#起始文本提示
title @a title [{"text":"! 游戏开始 !","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
#起始净化
clear @a
effect clear @e
weather clear
time set day
#设置规则
gamerule doDaylightCycle true
gamerule doMobSpawning true
gamerule doEntityDrops true
gamerule doTileDrops true
gamerule mobGriefing true
gamerule spawnRadius 100
#游戏模式确认#1
difficulty normal
gamemode survival @a[team=DB]
gamemode survival @a[team=HH]
gamemode spectator @a[team=sp]
#开始提示音
playsound entity.tnt.primed voice @a
#生物显示帮助
effect give @e glowing 30 255 true
effect clear @a
#初始效果给予
effect give @a resistance 30 25 true
effect give @a saturation 30 25 true
effect give @a regeneration 30 255 true

#给予钓鱼竿*1
give @p minecraft:fishing_rod{display:{Name:"[{\"text\":\"普通的《钓竿》\",\"color\":\"yellow\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":true}]",Lore:["{\"text\":\"健康~环保~绿色的\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":true,\"obfuscated\":false}","{\"text\":\"一次性钓竿\",\"color\":\"dark_green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":true,\"obfuscated\":false}"]},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s},{id:"minecraft:lure",lvl:5s},{id:"minecraft:channeling",lvl:1s}]} 1
give @a water_bucket 1
#输出给予文本
tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Tip]\n","color": "gold"},{"text": "所有人获得了高级钓竿","color": "yellow"},{"text": "但是死一次就没了OvO","color": "gray"}]

#初始计分板(判定)
scoreboard players set running time 1
scoreboard players set #SYSTEM test_team 2
#输出队伍分配情况文本
tellraw @a [{"text": "\n\n[当前场上队伍分配]","color": "gold"}]
tellraw @a [{"score":{"objective":"team_players","name":"#DB"},"color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text": ":","color": "gold"},{"score":{"objective":"team_players","name":"#HH"},"color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}] 

#初始化计时器
function timer:load
#计分板时间增加(//检测)
execute if score #LEVEL gamemode_way matches 0 if score #SYSTEM time_add matches 40 run function party:time_add/a_0
execute if score #LEVEL gamemode_way matches 1 if score #SYSTEM time_add matches 40 run function party:time_add/a_1
execute if score #LEVEL gamemode_way matches 0 if score #SYSTEM time_add matches 30 run function party:time_add/b_0
execute if score #LEVEL gamemode_way matches 1 if score #SYSTEM time_add matches 30 run function party:time_add/b_1
execute if score #LEVEL gamemode_way matches 0 if score #SYSTEM time_add matches 15 run function party:time_add/c_0
execute if score #LEVEL gamemode_way matches 1 if score #SYSTEM time_add matches 15 run function party:time_add/c_1

#计时器(BOSS栏颜色更改)
function party:bossbarcolor/yelloww

#队伍平衡系统运行
function moreplayer_way:team_fair



execute if score #player_excuses player_excuses matches 1 run scoreboard objectives add x dummy
execute if score #player_excuses player_excuses matches 1 run scoreboard objectives add y dummy
execute if score #player_excuses player_excuses matches 1 run scoreboard objectives add z dummy

#加入旁观
team join sp @a[team=]



#边界运行
scoreboard players set #SYSTEM world_run 2