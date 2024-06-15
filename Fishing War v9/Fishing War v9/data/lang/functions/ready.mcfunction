scoreboard objectives add lang dummy
gamerule commandBlockOutput false
gamerule sendCommandFeedback false

tellraw @a [{"text":"请选择数据包语言!\n請選擇數據包語言\nPlease choose the language of this datapack!","color":"blue","blod":true}]
tellraw @a [{"text":"[简体中文]","color":"yellow","blod":true,"clickEvent": {"action": "run_command","value": "/function lang:zh_cn"}},{"text":"         [繁體中文]","color":"gold","blod":true,"hoverEvent": {"action": "show_text","contents": {"text": "建设中...","bold": true}}},{"text": "         [English]","color": "yellow","bold": true,"hoverEvent": { "action": "show_text","contents": {"text": "creating...","bold": true}}}]