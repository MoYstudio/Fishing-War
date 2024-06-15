tellraw @a {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
gamerule doWeatherCycle true
tellraw @a {"text": "[规则设置]","color": "gold"}
tellraw @a {"text": "*请按顺序进行设置,请想好后再进行选择;如需更改,需点击[重置]","color": "red"}
tellraw @a [{"text": "-死亡不掉落-\n","color": "gray"},{"text": "        [开启]","color": "gray"},{"text": "        [关闭]","color": "yellow"}]
tellraw @a [{"text": "-天气变化-\n","color": "gray"},{"text": "        [开启]","color": "yellow"},{"text": "        [关闭]","color": "gray"}]
tellraw @a [{"text": "[重置]","color": "red","bold": true,"clickEvent": {"action":"run_command","value": "/function party:ruless/gamerules"}}]
tellraw @a [{"text": "[完成设置]","color": "dark_purple","clickEvent":{"action":"run_command","value":"/function party:setting"}}]