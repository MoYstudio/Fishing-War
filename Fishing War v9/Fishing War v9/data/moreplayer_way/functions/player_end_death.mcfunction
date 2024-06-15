execute if score #SYSTEM datapack_run matches 1 run effect give @s blindness 3 255 true
execute if score #SYSTEM datapack_run matches 1 run effect give @s night_vision 999999 255 true
execute if score #SYSTEM datapack_run matches 1 run gamemode spectator @s
execute if score #SYSTEM datapack_run matches 1 run gamerule spectatorsGenerateChunks true
execute if score #SYSTEM datapack_run matches 1 run scoreboard players set @s way_a_player_hp 0
execute if score #SYSTEM datapack_run matches 1 run playsound entity.ender_eye.death player @s
execute if score #SYSTEM datapack_run matches 1 run title @s title [{"text": "你已阵亡","color": "aqua"},{"text": "不可复活","color": "red"}]
execute if score #SYSTEM datapack_run matches 1 run title @s subtitle [{"text": "去为你的其他队友加油吧!","color": "yellow"}]
execute if score #SYSTEM datapack_run matches 1 run clear @s