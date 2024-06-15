scoreboard players set #HH team_unfair_fix 1
tellraw @a[team=HH] {"text": "已给予本队伍所有成员永久抗性提升2并随机给予一种药水","color": "gray","bold": true}
tellraw @a [{"text": "[影响人员]\n","color": "yellow","bold": true},{"selector":"@a[team=HH]","color": "dark_aqua","underlined": true}]
execute as @a[team=HH] run loot give @s fish minecraft:gameplay/fishing/potions ~ ~ ~