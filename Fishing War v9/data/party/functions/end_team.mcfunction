#队伍结尾化
team remove DB
team remove HHs
team remove HH
team remove DBs
team remove ad_pl
team remove sp
title @a title {"text": ""}
title @a subtitle {"text": ""}

#彩蛋2
function party:re_datapacks

#种子显示
tellraw @a {"text": "\n这是一张好地图吗?","color": "gold","bold": true}
tellraw @a [{"text": "如果这是张好地图,那就输入","color": "aqua","bold": true},{"text": "[ / seed ]","color": "green","bold": true,"clickEvent": {"action": "suggest_command","value": "/seed"}},{"text": "获取种子,分享一下吧!","color": "aqua","bold": true}]
gamerule sendCommandFeedback true
