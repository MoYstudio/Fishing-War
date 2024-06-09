#检测性计分板(构建)
scoreboard objectives add start_player dummy
scoreboard objectives add team_players dummy
scoreboard objectives add gamemode_way dummy
scoreboard objectives add way_a_player_hp deathCount
scoreboard objectives add test_team dummy
scoreboard objectives add datapack_run dummy
scoreboard objectives add team_join dummy

#检测性计分板初始化
scoreboard players set #LEVEL gamemode_way 3
scoreboard players set #SYSTEM time_add 0
scoreboard players set #player_excuses player_excuses 0