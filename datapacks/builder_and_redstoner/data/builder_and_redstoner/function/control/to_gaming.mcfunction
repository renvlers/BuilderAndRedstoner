playsound minecraft:block.note_block.harp master @a ~ ~ ~ 10000000 2
title @a reset

# set effects
function builder_and_redstoner:actions/set_effects

# set sidebar
scoreboard objectives setdisplay sidebar gaming_sidebar
scoreboard objectives setdisplay sidebar.team.red gaming_sidebar_red
scoreboard objectives setdisplay sidebar.team.gold gaming_sidebar_orange
scoreboard objectives setdisplay sidebar.team.yellow gaming_sidebar_yellow
scoreboard objectives setdisplay sidebar.team.green gaming_sidebar_green
scoreboard objectives setdisplay sidebar.team.blue gaming_sidebar_blue
scoreboard objectives setdisplay sidebar.team.dark_purple gaming_sidebar_purple

scoreboard players set *label_you_are_at gaming_sidebar 10
scoreboard players set *label_you_are_at gaming_sidebar_red 10
scoreboard players set *label_you_are_at gaming_sidebar_orange 10
scoreboard players set *label_you_are_at gaming_sidebar_yellow 10
scoreboard players set *label_you_are_at gaming_sidebar_green 10
scoreboard players set *label_you_are_at gaming_sidebar_blue 10
scoreboard players set *label_you_are_at gaming_sidebar_purple 10

scoreboard players set *label_blank0 gaming_sidebar 9
scoreboard players set *label_blank0 gaming_sidebar_red 9
scoreboard players set *label_blank0 gaming_sidebar_orange 9
scoreboard players set *label_blank0 gaming_sidebar_yellow 9
scoreboard players set *label_blank0 gaming_sidebar_green 9
scoreboard players set *label_blank0 gaming_sidebar_blue 9
scoreboard players set *label_blank0 gaming_sidebar_purple 9

scoreboard players set *label_current_turn gaming_sidebar 8
scoreboard players set *label_current_turn gaming_sidebar_red 8
scoreboard players set *label_current_turn gaming_sidebar_orange 8
scoreboard players set *label_current_turn gaming_sidebar_yellow 8
scoreboard players set *label_current_turn gaming_sidebar_green 8
scoreboard players set *label_current_turn gaming_sidebar_blue 8
scoreboard players set *label_current_turn gaming_sidebar_purple 8

scoreboard players set *label_turn_type gaming_sidebar 7
scoreboard players set *label_turn_type gaming_sidebar_red 7
scoreboard players set *label_turn_type gaming_sidebar_orange 7
scoreboard players set *label_turn_type gaming_sidebar_yellow 7
scoreboard players set *label_turn_type gaming_sidebar_green 7
scoreboard players set *label_turn_type gaming_sidebar_blue 7
scoreboard players set *label_turn_type gaming_sidebar_purple 7

scoreboard players set *label_blank1 gaming_sidebar 6
scoreboard players set *label_blank1 gaming_sidebar_red 6
scoreboard players set *label_blank1 gaming_sidebar_orange 6
scoreboard players set *label_blank1 gaming_sidebar_yellow 6
scoreboard players set *label_blank1 gaming_sidebar_green 6
scoreboard players set *label_blank1 gaming_sidebar_blue 6
scoreboard players set *label_blank1 gaming_sidebar_purple 6

scoreboard players set *label_selected gaming_sidebar 5
scoreboard players set *label_selected gaming_sidebar_red 5
scoreboard players set *label_selected gaming_sidebar_orange 5
scoreboard players set *label_selected gaming_sidebar_yellow 5
scoreboard players set *label_selected gaming_sidebar_green 5
scoreboard players set *label_selected gaming_sidebar_blue 5
scoreboard players set *label_selected gaming_sidebar_purple 5

scoreboard players set *label_time_limit gaming_sidebar 4
scoreboard players set *label_time_limit gaming_sidebar_red 4
scoreboard players set *label_time_limit gaming_sidebar_orange 4
scoreboard players set *label_time_limit gaming_sidebar_yellow 4
scoreboard players set *label_time_limit gaming_sidebar_green 4
scoreboard players set *label_time_limit gaming_sidebar_blue 4
scoreboard players set *label_time_limit gaming_sidebar_purple 4

scoreboard players set *label_blank2 gaming_sidebar 3
scoreboard players set *label_blank2 gaming_sidebar_red 3
scoreboard players set *label_blank2 gaming_sidebar_orange 3
scoreboard players set *label_blank2 gaming_sidebar_yellow 3
scoreboard players set *label_blank2 gaming_sidebar_green 3
scoreboard players set *label_blank2 gaming_sidebar_blue 3
scoreboard players set *label_blank2 gaming_sidebar_purple 3

scoreboard players set *label_my_team gaming_sidebar 2
scoreboard players set *label_my_team gaming_sidebar_red 2
scoreboard players set *label_my_team gaming_sidebar_orange 2
scoreboard players set *label_my_team gaming_sidebar_yellow 2
scoreboard players set *label_my_team gaming_sidebar_green 2
scoreboard players set *label_my_team gaming_sidebar_blue 2
scoreboard players set *label_my_team gaming_sidebar_purple 2

scoreboard players set *label_active_teams gaming_sidebar 1
scoreboard players set *label_active_teams gaming_sidebar_red 1
scoreboard players set *label_active_teams gaming_sidebar_orange 1
scoreboard players set *label_active_teams gaming_sidebar_yellow 1
scoreboard players set *label_active_teams gaming_sidebar_green 1
scoreboard players set *label_active_teams gaming_sidebar_blue 1
scoreboard players set *label_active_teams gaming_sidebar_purple 1

scoreboard players display numberformat *label_you_are_at gaming_sidebar blank
scoreboard players display numberformat *label_blank0 gaming_sidebar blank
scoreboard players display numberformat *label_current_turn gaming_sidebar blank
scoreboard players display numberformat *label_turn_type gaming_sidebar blank
scoreboard players display numberformat *label_blank1 gaming_sidebar blank
scoreboard players display numberformat *label_selected gaming_sidebar blank
scoreboard players display numberformat *label_time_limit gaming_sidebar blank
scoreboard players display numberformat *label_blank2 gaming_sidebar blank
scoreboard players display numberformat *label_my_team gaming_sidebar blank
scoreboard players display numberformat *label_active_teams gaming_sidebar blank

scoreboard players display numberformat *label_you_are_at gaming_sidebar_red blank
scoreboard players display numberformat *label_blank0 gaming_sidebar_red blank
scoreboard players display numberformat *label_current_turn gaming_sidebar_red blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_red blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_red blank
scoreboard players display numberformat *label_selected gaming_sidebar_red blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_red blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_red blank
scoreboard players display numberformat *label_my_team gaming_sidebar_red blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_red blank

scoreboard players display numberformat *label_you_are_at gaming_sidebar_orange blank
scoreboard players display numberformat *label_blank0 gaming_sidebar_orange blank
scoreboard players display numberformat *label_current_turn gaming_sidebar_orange blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_orange blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_orange blank
scoreboard players display numberformat *label_selected gaming_sidebar_orange blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_orange blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_orange blank
scoreboard players display numberformat *label_my_team gaming_sidebar_orange blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_orange blank

scoreboard players display numberformat *label_you_are_at gaming_sidebar_yellow blank
scoreboard players display numberformat *label_blank0 gaming_sidebar_yellow blank
scoreboard players display numberformat *label_current_turn gaming_sidebar_yellow blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_yellow blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_yellow blank
scoreboard players display numberformat *label_selected gaming_sidebar_yellow blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_yellow blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_yellow blank
scoreboard players display numberformat *label_my_team gaming_sidebar_yellow blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_yellow blank

scoreboard players display numberformat *label_you_are_at gaming_sidebar_green blank
scoreboard players display numberformat *label_blank0 gaming_sidebar_green blank
scoreboard players display numberformat *label_current_turn gaming_sidebar_green blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_green blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_green blank
scoreboard players display numberformat *label_selected gaming_sidebar_green blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_green blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_green blank
scoreboard players display numberformat *label_my_team gaming_sidebar_green blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_green blank

scoreboard players display numberformat *label_you_are_at gaming_sidebar_blue blank
scoreboard players display numberformat *label_blank0 gaming_sidebar_blue blank
scoreboard players display numberformat *label_current_turn gaming_sidebar_blue blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_blue blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_blue blank
scoreboard players display numberformat *label_selected gaming_sidebar_blue blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_blue blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_blue blank
scoreboard players display numberformat *label_my_team gaming_sidebar_blue blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_blue blank

scoreboard players display numberformat *label_you_are_at gaming_sidebar_purple blank
scoreboard players display numberformat *label_blank0 gaming_sidebar_purple blank
scoreboard players display numberformat *label_current_turn gaming_sidebar_purple blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_purple blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_purple blank
scoreboard players display numberformat *label_selected gaming_sidebar_purple blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_purple blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_purple blank
scoreboard players display numberformat *label_my_team gaming_sidebar_purple blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_purple blank

# 设置模数
scoreboard players set #divider temp 60

# 初始化游戏区
fill 10208 63 -19 10242 97 15 air
fill 10255 63 -19 10289 97 15 air
fill 10302 63 -19 10336 97 15 air
fill 10208 63 28 10242 97 62 air
fill 10255 63 28 10289 97 62 air
fill 10302 63 28 10336 97 62 air

fill 10208 62 -19 10242 62 15 grass_block
fill 10255 62 -19 10289 62 15 grass_block
fill 10302 62 -19 10336 62 15 grass_block
fill 10208 62 28 10242 62 62 grass_block
fill 10255 62 28 10289 62 62 grass_block
fill 10302 62 28 10336 62 62 grass_block

fillbiome 10206 61 -21 10338 98 64 plains

# decide theme or problem
function builder_and_redstoner:actions/decide_themes_or_problems

# teleport players and set gamemode to creative
gamemode spectator @a
execute as @a[team=red] run tp @s 10225 75 -2 90 15
execute as @a[team=orange] run tp @s 10272 75 -2 90 15
execute as @a[team=yellow] run tp @s 10319 75 -2 90 15
execute as @a[team=green] run tp @s 10225 75 45 90 15
execute as @a[team=blue] run tp @s 10272 75 45 90 15
execute as @a[team=purple] run tp @s 10319 75 45 90 15
# 延迟切换创造模式，确保玩家处于飞行状态
schedule function builder_and_redstoner:actions/set_gamemode_to_creative 3t

# start timing
execute if score #turn_type temp matches 0 run function builder_and_redstoner:timers/timer_building
execute if score #turn_type temp matches 1 run function builder_and_redstoner:timers/timer_redstone

# show title
function builder_and_redstoner:actions/show_turn_start_title with entity @n[tag=memory_entity, type=marker] data

execute \
    unless data storage builder_and_redstoner:config {config: {status: "GAMING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "GAMING"