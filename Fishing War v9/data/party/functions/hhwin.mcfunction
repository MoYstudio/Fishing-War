team modify DB prefix {"text": "fail","color": "gray"}
team modify HH prefix {"text": "win","color": "gold"}

title @a actionbar [{"text":"数据包制作:zirran","color":"dark_gray","bold":false,"italic":true,"underlined":false,"strikethrough":true,"obfuscated":false}]
title @a subtitle [{"selector":"@a[team=DB]","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"还需努力!","color":"yellow","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a title [{"text":"恭喜","color":"aqua","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[team=HH]","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"获得胜利!","color":"aqua","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
function party:end
playsound ui.toast.challenge_complete voice @a[team=HH]