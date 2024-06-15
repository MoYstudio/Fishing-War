#判定初始人数(构建)
#define entity #SYSTEM [虚拟玩家]
execute store result score #SYSTEM start_player if entity @a

#判定队伍玩家数(构建)
#define entity #DB [avengers]
#define entity #HH [pursuers]
#define entity #DB_BY
#define entity #HH_BY
#define entity #DB_PO
#define entity #HH_PO
execute store result score #DB_PO team_players if entity @a[team=DB,tag=g_on]
execute store result score #HH_PO team_players if entity @a[team=HH,tag=g_on]
execute store result score #DB team_players if entity @a[team=DB]
execute store result score #HH team_players if entity @a[team=HH]
execute store result score #DB_BY team_players if entity @a[team=DB,tag=g_de]
execute store result score #HH_BY team_players if entity @a[team=HH,tag=g_de]

#队伍检测
#define entity #TEAM_JOIN
execute store result score #TEAM_JOIN team_join if entity @a[team=]

#游戏阶段检测(构建)
#define entity #LEVEL [阶段]

#玩家检测器模式检测(构建)
#define entity #player_excuses

#管理员请求限制_1
#define entity #op_pl
execute store result score #op_pl op_pl_re_n if entity @a[team=ad_pl]

#判定重构(23.3.12)
tag @a[gamemode=survival] add g_on
tag @a[gamemode=survival] remove g_de
tag @a[gamemode=spectator] remove g_on
tag @a[gamemode=spectator] add g_de