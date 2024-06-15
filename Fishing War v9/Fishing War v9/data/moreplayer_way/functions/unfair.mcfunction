tellraw @a [{"text": "·当前队伍分配不均匀,将给予人数较少的队伍些许帮助!","color": "red","bold": true}]
execute if score #DB team_players < #HH team_players run function moreplayer_way:fair_fixed/db_less
execute if score #DB team_players > #HH team_players run function moreplayer_way:fair_fixed/hh_less