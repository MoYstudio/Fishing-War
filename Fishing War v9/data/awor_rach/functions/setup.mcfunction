scoreboard objectives add awor_rach dummy
scoreboard players set $Var4 awor_rach 4
scoreboard players set $Var256 awor_rach 256
scoreboard players remove $Delay awor_rach 0
execute if score $Delay awor_rach matches 0 run scoreboard players set $Delay awor_rach 20
