execute if score #LEVEL gamemode_way matches 0 run execute if score first time matches 0 run scoreboard players add min time 5
execute if score #LEVEL gamemode_way matches 0 run execute if score first time matches 0 run scoreboard players add min time 5
execute if score #LEVEL gamemode_way matches 0 run execute if score first time matches 0 run scoreboard players add min time 5
scoreboard players set running time 1

execute if score #LEVEL gamemode_way matches 0 run schedule function level_2:start 902s
#execute if score #SYSTEM datapack_run matches 1 run schedule function random:random_things_run/stop 900s