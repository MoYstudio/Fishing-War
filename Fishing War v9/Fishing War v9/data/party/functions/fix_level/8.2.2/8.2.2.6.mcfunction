tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[变动]\n","color": "gold","bold": true},{"text": "*注:此版本为v8.2.2的修复优化版本,主版本为v8.2.2\n","color": "gold"},{"text": "1.修改、调整、增加了一些文本\n2.修复了一些BUG(见BUG修复/记录日志)\n3.彻底删去[生命体检测仪]改为显示具体坐标\n4.边界收缩速度和高级钓鱼竿给予时间根据总时间而变\n5.删除随机事件这个BUG一样的功能\n6.增加'龙骑士',击败后可获得神器(等级高于钓鱼所得到的),10min刷新一次\n","color": "dark_red","bold": true}]
tellraw @s [{"text":"[增加特定能力]\n","color":"aqua","blod":true},{"text":"1.杀死15名玩家","color":"gold","blod":true},{"text":"==>","color":"green","blod":true},{"text": "效果\n","color": "yellow","bold": true},{"text":"2.杀死100只牛","color":"gold","blod":true},{"text":"==>","color":"green","blod":true},{"text": "效果+随机池\n","color": "yellow","bold": true},{"text":"3.行走(跑)100km","color":"gold","blod":true},{"text":"==>","color":"green","blod":true},{"text": "效果\n","color": "yellow","bold": true}]
tellraw @s {"text": "[返回]","color": "dark_aqua","clickEvent": {"action":"run_command","value": "/function party:ready"}}