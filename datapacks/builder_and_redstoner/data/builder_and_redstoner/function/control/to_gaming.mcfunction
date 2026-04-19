clear @a[team=!, sort=arbitrary]
playsound minecraft:block.note_block.harp master @a[sort=arbitrary, team=!] ~ ~ ~ 10000000 2
title @a[sort=arbitrary] reset
title @a[team=!, sort=arbitrary] actionbar ""

# set effects
function builder_and_redstoner:actions/set_effects

# 设置模数
scoreboard players set #divider temp 60

# 初始化游戏区
fill 10208 63 -19 10242 97 15 air destroy
fill 10255 63 -19 10289 97 15 air destroy
fill 10302 63 -19 10336 97 15 air destroy
fill 10208 63 28 10242 97 62 air destroy
fill 10255 63 28 10289 97 62 air destroy
fill 10302 63 28 10336 97 62 air destroy

fill 10208 62 -19 10242 62 15 grass_block destroy
fill 10255 62 -19 10289 62 15 grass_block destroy
fill 10302 62 -19 10336 62 15 grass_block destroy
fill 10208 62 28 10242 62 62 grass_block destroy
fill 10255 62 28 10289 62 62 grass_block destroy
fill 10302 62 28 10336 62 62 grass_block destroy

fillbiome 10206 61 -21 10338 98 64 plains

kill @e[sort=arbitrary,x=10206, y=61, z=-21, dx=38 , dy=37 , dz=38]
kill @e[sort=arbitrary,x=10253, y=61, z=-21, dx=38 , dy=37 , dz=38]
kill @e[sort=arbitrary,x=10300, y=61, z=-21, dx=38 , dy=37 , dz=38]
kill @e[sort=arbitrary,x=10206, y=61, z=26, dx=38 , dy=37 , dz=38]
kill @e[sort=arbitrary,x=10253, y=61, z=26, dx=38 , dy=37 , dz=38]
kill @e[sort=arbitrary,x=10300, y=61, z=26, dx=38 , dy=37 , dz=38]

execute if score #turn_type temp matches 1 run clone 20251 151 -25 20285 152 9 10208 76 -19 masked
execute if score #turn_type temp matches 1 run clone 20251 151 -25 20285 152 9 10255 76 -19 masked
execute if score #turn_type temp matches 1 run clone 20251 151 -25 20285 152 9 10302 76 -19 masked
execute if score #turn_type temp matches 1 run clone 20251 151 -25 20285 152 9 10208 76 28 masked
execute if score #turn_type temp matches 1 run clone 20251 151 -25 20285 152 9 10255 76 28 masked
execute if score #turn_type temp matches 1 run clone 20251 151 -25 20285 152 9 10302 76 28 masked

# decide theme or problem
function builder_and_redstoner:actions/decide_themes_or_problems

# teleport players and set gamemode to creative
gamemode spectator @a
tp @a[sort=arbitrary,team=red] 10225 75 -2 90 15
tp @a[sort=arbitrary,team=orange] 10272 75 -2 90 15
tp @a[sort=arbitrary,team=yellow] 10319 75 -2 90 15
tp @a[sort=arbitrary,team=green] 10225 75 45 90 15
tp @a[sort=arbitrary,team=blue] 10272 75 45 90 15
tp @a[sort=arbitrary,team=purple] 10319 75 45 90 15
tp @a[sort=arbitrary,team=] 10272 111 21.5
execute as @a[team=, sort=arbitrary] at @s run spectate @r[team=!, sort=arbitrary, limit=1]

# 延迟切换创造模式，确保玩家处于飞行状态
schedule function builder_and_redstoner:actions/set_gamemode_to_creative 3t

# show title
function builder_and_redstoner:actions/show_turn_start_title with storage builder_and_redstoner:memory data

# start timing
execute if score #turn_type temp matches 0 run function builder_and_redstoner:timers/timer_building
execute if score #turn_type temp matches 1 run function builder_and_redstoner:timers/timer_redstone

# initialize menu status
execute if score #turn_type temp matches 0 run scoreboard players set @a menu_status 0
execute if score #turn_type temp matches 0 run scoreboard players set @a menu_control 0
execute if score #turn_type temp matches 0 run scoreboard players set #menu_options temp 4

scoreboard players set @a get_biome_brush_trigger -1
scoreboard players set @a weather_and_time_change_trigger -1

# initialize world time and weather
data modify storage builder_and_redstoner:memory data.time_and_weather.red set value {time:"noon",weather:"clear"}
data modify storage builder_and_redstoner:memory data.time_and_weather.orange set value {time:"noon",weather:"clear"}
data modify storage builder_and_redstoner:memory data.time_and_weather.yellow set value {time:"noon",weather:"clear"}
data modify storage builder_and_redstoner:memory data.time_and_weather.green set value {time:"noon",weather:"clear"}
data modify storage builder_and_redstoner:memory data.time_and_weather.blue set value {time:"noon",weather:"clear"}
data modify storage builder_and_redstoner:memory data.time_and_weather.purple set value {time:"noon",weather:"clear"}

scoreboard players reset @a right_check

execute \
    unless data storage builder_and_redstoner:config {config: {status: "GAMING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "GAMING"

title @a[team=, sort=arbitrary] actionbar ""