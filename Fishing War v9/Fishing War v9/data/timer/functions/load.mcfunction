#初始化计时器
bossbar add timer {"text":"TIME","color":"aqua","bold":true}
bossbar set minecraft:timer style notched_10
bossbar set minecraft:timer players @a
scoreboard objectives add time dummy
scoreboard players set tick time 0
scoreboard players set sec time 0
scoreboard players set min time 0
scoreboard players set running time 0
scoreboard players set first time 0
scoreboard players set secn time 0
scoreboard players set 60 time 60
bossbar set minecraft:timer value 0