execute if score #SYSTEM start_player matches ..1 if score #TEAM_JOIN team_join matches 0 run title @a actionbar {"text": "[当前人数:1,不足最低开始要求]","color": "yellow","bold": true}
execute if score #SYSTEM start_player matches 2.. if score #TEAM_JOIN team_join matches 0 run function party:starts/start
execute if score #SYSTEM start_player matches 2.. if score #TEAM_JOIN team_join matches 1.. run function party:team_join_no