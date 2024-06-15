advancement revoke @s only dj:baotoushucuan
effect give @s speed 15 10 true
effect give @s resistance 15 255 true
effect give @s invisibility 15 255 true
effect give @s dolphins_grace 15 10 true
scoreboard players set @s run_run_light 2
execute as @s run tellraw @a [{"selector":"@s","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"喝下了","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"一瓶可以让他/她快速逃走的药水","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players add @s run_run_mo 1
execute as @s run schedule function dj:btsc_re 10s