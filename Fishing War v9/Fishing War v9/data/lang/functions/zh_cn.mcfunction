tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n*设置成功,请等待","color":"gold","blod":true}]
playsound ui.button.click voice @a
scoreboard players set #lang lang 1
title @a title [{"text": "数据包正在初始化","color": "gray"},{"text": "请等待!","color": "gray"}]
schedule function party:rules 5s
schedule function party:ready 5s
schedule function moreplayer_way:load 5s