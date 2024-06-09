scoreboard players add $Ticks awor_rach 1
execute if score $Ticks awor_rach >= $Delay awor_rach run function awor_rach:loop

execute as @e[type=armor_stand,tag=awor_rach] at @s run function awor_rach:armor_stand
