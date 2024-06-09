tellraw @a[team=HH] {"text": "{检测到此队伍人数为1,已将[跃迁引擎]替换成[抗性提升10级10s]}","color": "gray"}
effect give @a[team=HH,tag=g_on] resistance 10 10 true
tellraw @a {"text": "系统发现他是一个人,所以安慰啦一下他...","color": "aqua"}