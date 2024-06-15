#计时器(end)输出
execute if score tick time matches 0 if score min time matches 0 if score sec time matches 0 if score running time matches 1 run title @a title {"text":"[此阶段结束]","color":"red","bold":true,"italic":true}
execute if score tick time matches 0 if score min time matches 0 if score sec time matches 0 if score running time matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse record @s
execute if score tick time matches 0 if score min time matches 0 if score sec time matches 0 if score running time matches 1 run scoreboard players set first time 0
execute if score tick time matches 0 if score min time matches 0 if score sec time matches 0 run scoreboard players set running time 0

#计时器运行
execute if score running time matches 1 if score first time <= running time run scoreboard players operation first time += min time
execute if score running time matches 1 if score first time = min time run scoreboard players operation first time *= 60 time
execute if score running time matches 1 store result bossbar minecraft:timer max run scoreboard players get first time
execute if score running time matches 1 store result bossbar minecraft:timer value run scoreboard players get secn time
execute if score tick time matches -1 run scoreboard players operation secn time = min time
execute if score tick time matches -1 run scoreboard players operation secn time *= 60 time
execute if score tick time matches -1 run scoreboard players operation secn time += sec time
execute if score tick time matches -1 run scoreboard players operation secn time += tick time
execute if score min time matches -1 run scoreboard players set min time 0
execute if score sec time matches -1 run scoreboard players remove min time 1
execute if score sec time matches -1 run scoreboard players set sec time 59
execute if score tick time matches -1 run scoreboard players remove sec time 1
execute if score tick time matches -1 run scoreboard players set tick time 19
execute if score running time matches 1 run scoreboard players remove tick time 1

#计时器(ing)输出
bossbar set timer name [{"score":{"name":"min","objective":"time"},"color":"aqua","bold":true},{"text":"min ","color": "dark_gray"},{"score":{"name":"sec","objective":"time"},"bold":true,"color": "yellow"},{"text":"s  ","color": "dark_gray"}]