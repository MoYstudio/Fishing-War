title @a title {"text": "有人未加入队伍","color": "red","bold": true}
tellraw @a [{"text": "是否强制开启游戏\n","color": "gold","bold": true},{"text": "[强制开启则会让未加入队伍的人锁定观察者阵营]","color": "red","bold": true}]
tellraw @a[team=] {"text": "你没有加入队伍，请加入队伍！","color": "red"}
execute as @a[team=] run playsound entity.tnt.primed music @a[team=] ~ ~ ~
tellraw @a [{"text": "{开始游戏}","color": "yellow","bold": true,"clickEvent": {"action": "run_command","value": "/function party:starts/start"}}]