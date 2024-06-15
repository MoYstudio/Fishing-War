#数据包净化
function party:re_datapacks

#初始游戏规则
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule disableElytraMovementCheck true
gamerule showDeathMessages true
gamerule spectatorsGenerateChunks false
gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule doDaylightCycle false
gamerule doLimitedCrafting false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule doMobSpawning false
gamerule doEntityDrops false
gamerule doTileDrops false
gamerule mobGriefing false

#初始/设置队伍
team add DB
team add HH
team add DBs
team add HHs
team add sp
team empty DB
team empty HH
team empty DBs
team empty HHs
team empty sp
team modify DB color red
team modify HH color blue
team modify DBs color red
team modify HHs color blue
team modify sp color gray
team modify DB nametagVisibility always
team modify HH nametagVisibility always
team modify DB collisionRule always
team modify HH collisionRule always
team modify DB seeFriendlyInvisibles true
team modify HH seeFriendlyInvisibles true
team modify DB friendlyFire false
team modify HH friendlyFire false
team modify DB prefix {"text": ">> ","color": "dark_red"}
team modify HH prefix {"text": ">> ","color": "dark_blue"}
team modify DBs prefix {"text": ">> ","color": "dark_red"}
team modify HHs prefix {"text": ">> ","color": "dark_blue"}
execute if score #lang lang matches 1 run team modify sp prefix {"text": "摆烂的 ","color": "gray","bold": true}

#功能计分板(构建)
execute if score #lang lang matches 1 run scoreboard objectives add tip armor ["[防御值]"]
scoreboard objectives add time_add dummy
execute if score #lang lang matches 1 run scoreboard objectives add player_hp health ["生 命 值"]
scoreboard objectives add player_excuses dummy
scoreboard objectives add team_unfair_fix dummy
scoreboard objectives add random_thing_cho dummy
scoreboard objectives add chest_rain dummy
scoreboard objectives add world_run dummy
scoreboard objectives add run_run_mo dummy
scoreboard objectives add run_run_light dummy

#功能计分板(显示)
scoreboard objectives setdisplay sidebar tip
scoreboard objectives setdisplay below_name player_hp

#计分板数值
scoreboard players set #SYSTEM chest_rain 1
scoreboard players set @a run_run_light 1
scoreboard players set @a run_run_mo 0

#边界初始化
worldborder center 0 0
worldborder set 2000
worldborder warning distance 50
worldborder warning time 8
worldborder damage amount 5
worldborder damage buffer 2

#禁止
effect give @a jump_boost 999999 200 true
effect give @a slowness 999999 255 true
effect give @a resistance 999999 255 true