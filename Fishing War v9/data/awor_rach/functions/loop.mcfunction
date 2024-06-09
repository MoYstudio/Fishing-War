execute as @a at @s run summon area_effect_cloud ~ ~64 ~ {Tags:["awor_rach"],Age:1}
execute as @e[type=area_effect_cloud,tag=awor_rach] run function awor_rach:spawn
scoreboard players set $Ticks awor_rach 0
