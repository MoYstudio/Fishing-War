advancement revoke @s only party:csgs
execute if score #DB_PO team_players matches 2.. run execute as @s[team=DB] run team join DBs @s
execute if score #DB_PO team_players matches 2.. run execute as @s[team=DBs] run tp @s @p[team=DB,tag=g_on]
execute if score #DB_PO team_players matches 2.. run execute as @s[team=DBs] run team join DB @s
execute if score #DB_PO team_players matches 2.. run execute as @s[team=DB] run tellraw @a [{"selector":"@s","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"跃迁引擎","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"传送到了最近的一名队友身边","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score #DB_PO team_players matches 1 run execute as @s[team=DB] run tellraw @a [{"selector":"@s","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"跃迁引擎","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"传送到了最近的一名队友身边了吗","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"?","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score #DB_PO team_players matches 1 run execute as @s[team=DB] run function dj:only_team_one

execute if score #HH_PO team_players matches 2.. run execute as @s[team=HH] run team join HHs @s
execute if score #HH_PO team_players matches 2.. run execute as @s[team=HHs] run tp @s @p[team=HH,tag=g_on]
execute if score #HH_PO team_players matches 2.. run execute as @s[team=HHs] run team join HH @s
execute if score #HH_PO team_players matches 2.. run execute as @s[team=HH] run tellraw @a [{"selector":"@s","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"跃迁引擎","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"传送到了最近的一名队友身边","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score #HH_PO team_players matches 1 run execute as @s[team=HH] run tellraw @a [{"selector":"@s","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"跃迁引擎","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"传送到了最近的一名队友身边了吗","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"?","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score #HH_PO team_players matches 1 run execute as @s[team=HH] run function dj:onyl_team_one_hh