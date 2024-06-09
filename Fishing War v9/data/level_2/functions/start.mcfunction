title @a title {"text": "第二阶段-[决一死战]","color": "dark_red"}
tellraw @a {"text": "\n\n\n\n\n\n\n\n--此阶段玩家死亡将不再能重生--","color": "gold"}
function timer:load
execute if score first time matches 0 run scoreboard players add min time 5
execute if score first time matches 0 run scoreboard players add min time 5
scoreboard players set running time 1
execute if score #SYSTEM datapack_run matches 1 run schedule function level_3:start 601s
scoreboard players set #LEVEL gamemode_way 1
scoreboard players set @a potion_winner_lo 0