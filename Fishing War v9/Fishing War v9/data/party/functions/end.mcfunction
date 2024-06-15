#规则重启
gamerule keepInventory true
gamemode spectator @a
time set noon
weather clear
gamerule doWeatherCycle false
gamerule doDaylightCycle false
difficulty peaceful
gamerule spectatorsGenerateChunks true
clear @a
bossbar remove timer

#数据包停止运行
scoreboard players set #SYSTEM datapack_run 0


#结束运行
schedule function party:end_team 5s

#结束输出感谢文本
schedule function party:end_thanks/played_thanks 1s
schedule function party:end_thanks/creat_thanks 2s
schedule function party:end_thanks/enter_thanks 4s

#彩蛋输出
effect give @e levitation 999999 1 true
effect give @e glowing 999999 255 true
effect give @e night_vision 999999 255 true

playsound entity.ender_dragon.death voice @a