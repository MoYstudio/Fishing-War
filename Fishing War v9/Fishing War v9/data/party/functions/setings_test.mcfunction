execute if score #player_excuses player_excuses matches 0 run title @a title {"text": "游戏流程设置未完成！","color": "red"}
execute if score #SYSTEM time_add matches 0 run title @a title {"text": "游戏流程设置未完成！","color": "red"}
execute if score #LEVEL gamemode_way matches 3 run title @a title {"text": "游戏流程设置未完成！","color": "red"}
execute if score #player_excuses player_excuses matches 1..2 if score #SYSTEM time_add matches 15..40 if score #LEVEL gamemode_way matches 0..1 run function moreplayer_way:start_player_test