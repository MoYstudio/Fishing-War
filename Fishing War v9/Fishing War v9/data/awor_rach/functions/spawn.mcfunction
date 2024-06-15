execute store result score $awor_rach_random awor_rach run data get entity @s UUID[0]
scoreboard players operation $awor_rach_random awor_rach %= $Var256 awor_rach
scoreboard players remove $awor_rach_random awor_rach 128
execute store result score $awor_rach_x awor_rach run data get entity @s Pos[0]
scoreboard players operation $awor_rach_x awor_rach += $awor_rach_random awor_rach
execute as @s store result entity @s Pos[0] double 1 run scoreboard players get $awor_rach_x awor_rach

execute store result score $awor_rach_random awor_rach run data get entity @s UUID[1]
scoreboard players operation $awor_rach_random awor_rach %= $Var256 awor_rach
scoreboard players remove $awor_rach_random awor_rach 128
execute store result score $awor_rach_z awor_rach run data get entity @s Pos[2]
scoreboard players operation $awor_rach_z awor_rach += $awor_rach_random awor_rach
execute as @s store result entity @s Pos[2] double 1 run scoreboard players get $awor_rach_z awor_rach

execute store result score $awor_rach_random awor_rach run data get entity @s UUID[2]
scoreboard players operation $awor_rach_random awor_rach %= $Var4 awor_rach

execute if score $awor_rach_random awor_rach matches 0 at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invulnerable:1b,Invisible:1b,Fire:9999,Rotation:[0.0f,0.0f],Tags:["awor_rach","awor_rach_south"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}
execute if score $awor_rach_random awor_rach matches 1 at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invulnerable:1b,Invisible:1b,Fire:9999,Rotation:[180.0f,0.0f],Tags:["awor_rach","awor_rach_north"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}
execute if score $awor_rach_random awor_rach matches 2 at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invulnerable:1b,Invisible:1b,Fire:9999,Rotation:[90.0f,0.0f],Tags:["awor_rach","awor_rach_west"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}
execute if score $awor_rach_random awor_rach matches 3 at @s align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invulnerable:1b,Invisible:1b,Fire:9999,Rotation:[-90.0f,0.0f],Tags:["awor_rach","awor_rach_east"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}

kill @s
