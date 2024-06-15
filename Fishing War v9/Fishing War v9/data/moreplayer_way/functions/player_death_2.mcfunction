effect give @s blindness 3 255 true
effect give @s night_vision 999999 255 true
gamemode spectator @s
gamerule spectatorsGenerateChunks true
scoreboard players set @s way_a_player_hp 0
playsound entity.ender_eye.death player @s
clear @s
tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n您已死亡!\n游戏即将结束!","color": "red","bold": true}]