tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[变动]\n","color": "gold","bold": true},{"text": "*注:此版本为FishingWar重构版本\n","color": "red"},{"text": "1.修改、调整、增加了一些文本\n2.删除龙的刷新\n3.删改了一些不必要的运行命令来增加流畅程度","color": "dark_red","bold": true},{"text": "[置换药水]","color": "light_purple","bold": true,"hoverEvent": { "action": "show_text","contents": {"text": "与离你最近的敌人置换位置\n","color": "aqua","bold": true}}},{"text": "[雷霆万钧]","color": "yellow","bold": true},{"text": "1min内,所有人射出的箭落地便会化作1~20道闪电","color": "aqua","bold": true}]
tellraw @s {"text": "[返回]","color": "dark_aqua","clickEvent": {"action":"run_command","value": "/function party:ready"}}