execute if score #LEVEL gamemode_way matches 1..1 if score #SYSTEM datapack_run matches 1 run execute if score #DB team_players = #DB_BY team_players run function party:hhwin
execute if score #LEVEL gamemode_way matches 1..1 if score #SYSTEM datapack_run matches 1 run execute if score #HH team_players = #HH_BY team_players run function party:dbwin
execute if score #LEVEL gamemode_way matches 1..1 if score #SYSTEM datapack_run matches 1 run execute if score #SYSTEM start_player matches ..2 run execute as @a[scores={way_a_player_hp=1..5000}] run function moreplayer_way:player_death_2
execute if score #LEVEL gamemode_way matches 1..1 if score #SYSTEM datapack_run matches 1 run execute if score #SYSTEM start_player matches 3.. run execute as @a[scores={way_a_player_hp=1..5000}] run function moreplayer_way:player_end_death
execute if score #LEVEL gamemode_way matches 0 run execute as @a[scores={way_a_player_hp=1..3}] run scoreboard players set @s way_a_player_hp 0