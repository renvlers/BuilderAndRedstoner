# decide this turn is building or redstone
# 0 = building, 1 = redstone
execute \
    if score #building_turns_left counter matches 1.. \
    if score #redstone_turns_left counter matches 1.. \
    store result score #random random run \
        random value 0..1
execute \
    if score #building_turns_left counter matches 1.. \
    if score #redstone_turns_left counter matches 1.. run \
        scoreboard players operation #turn_type temp = #random random
execute \
    if score #building_turns_left counter matches 1.. \
    if score #redstone_turns_left counter matches 0 run \
        scoreboard players set #turn_type temp 0
execute \
    if score #building_turns_left counter matches 0 \
    if score #redstone_turns_left counter matches 1.. run \
        scoreboard players set #turn_type temp 1

execute \
    if score #turn_type temp matches 0 run \
        scoreboard players remove #building_turns_left counter 1
execute \
    if score #turn_type temp matches 1 run \
        scoreboard players remove #redstone_turns_left counter 1

scoreboard players add #current_turn counter 1

execute \
    store result entity @n[tag=memory_entity, type=marker] data.bossbar_arguments.max_turns int 1 run \
        scoreboard players get #total_turns counter
execute \
    store result entity @n[tag=memory_entity, type=marker] data.bossbar_arguments.current_turn int 1 run \
        scoreboard players get #current_turn counter

# set bossbar
function builder_and_redstoner:actions/set_bossbar_max with entity @n[tag=memory_entity, type=marker] data.bossbar_arguments
function builder_and_redstoner:actions/set_bossbar_value with entity @n[tag=memory_entity, type=marker] data.bossbar_arguments
execute \
    if score #turn_type temp matches 0 run \
        bossbar set builder_and_redstoner:current_turn name [ \
            { \
                text: "【红建工坊】第 ", \
                color: "green", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#current_turn", \
                    objective: "counter" \
                }, \
                color: "green", \
                bold: true \
            }, \
            { \
                text: " / ", \
                color: "green", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#total_turns", \
                    objective: "counter" \
                }, \
                color: "green", \
                bold: true \
            }, \
            { \
                text: " 轮 - 建筑轮", \
                color: "green", \
                bold: true \
            } \
        ]
execute \
    if score #turn_type temp matches 1 run \
        bossbar set builder_and_redstoner:current_turn name [ \
            { \
                text: "【红建工坊】第 ", \
                color: "red", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#current_turn", \
                    objective: "counter" \
                }, \
                color: "red", \
                bold: true \
            }, \
            { \
                text: " / ", \
                color: "red", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#total_turns", \
                    objective: "counter" \
                }, \
                color: "red", \
                bold: true \
            }, \
            { \
                text: " 轮 - 红石轮", \
                color: "red", \
                bold: true \
            } \
        ]
execute \
    if score #turn_type temp matches 0 run \
        bossbar set builder_and_redstoner:current_turn color green
execute \
    if score #turn_type temp matches 1 run \
        bossbar set builder_and_redstoner:current_turn color red

execute \
    as @e[tag=label_theme_or_problem_selector, type=text_display] \
    if score #turn_type temp matches 0 run \
        data modify entity @s text set value { \
            text: "打开末影箱选择建筑主题", \
            color: "green", \
            bold: true \
        }
execute \
    as @e[tag=label_theme_or_problem_selector, type=text_display] \
    if score #turn_type temp matches 1 run \
        data modify entity @s text set value { \
            text: "打开末影箱选择红石问题", \
            color: "red", \
            bold: true \
        }
bossbar set builder_and_redstoner:current_turn visible true
bossbar set builder_and_redstoner:current_turn players @a

data remove entity @n[tag=memory_entity, type=marker] data.selected_themes
data remove entity @n[tag=memory_entity, type=marker] data.selected_problems

scoreboard players reset #prepared_themes temp
scoreboard players reset #prepared_problems temp

# load random themes/problems for selection
execute \
    if score #turn_type temp matches 0 run \
        function builder_and_redstoner:actions/get_random_themes with storage builder_and_redstoner:themes
execute \
    if score #turn_type temp matches 1 run \
        function builder_and_redstoner:actions/get_random_problems with storage builder_and_redstoner:problems

scoreboard players reset @a selection

# sidebar layout:
# you are at
# blank
# current turn
# turn type
# blank
# selected theme or problem
# time limit
# blank
# my team
# active teams
scoreboard objectives setdisplay sidebar gaming_sidebar
scoreboard objectives setdisplay sidebar.team.red gaming_sidebar_red
scoreboard objectives setdisplay sidebar.team.gold gaming_sidebar_orange
scoreboard objectives setdisplay sidebar.team.yellow gaming_sidebar_yellow
scoreboard objectives setdisplay sidebar.team.green gaming_sidebar_green
scoreboard objectives setdisplay sidebar.team.blue gaming_sidebar_blue
scoreboard objectives setdisplay sidebar.team.dark_purple gaming_sidebar_purple

scoreboard players set *label_current_turn gaming_sidebar 2147483647
scoreboard players set *label_current_turn gaming_sidebar_red 2147483647
scoreboard players set *label_current_turn gaming_sidebar_orange 2147483647
scoreboard players set *label_current_turn gaming_sidebar_yellow 2147483647
scoreboard players set *label_current_turn gaming_sidebar_green 2147483647
scoreboard players set *label_current_turn gaming_sidebar_blue 2147483647
scoreboard players set *label_current_turn gaming_sidebar_purple 2147483647

scoreboard players set *label_turn_type gaming_sidebar 2147483646
scoreboard players set *label_turn_type gaming_sidebar_red 2147483646
scoreboard players set *label_turn_type gaming_sidebar_orange 2147483646
scoreboard players set *label_turn_type gaming_sidebar_yellow 2147483646
scoreboard players set *label_turn_type gaming_sidebar_green 2147483646
scoreboard players set *label_turn_type gaming_sidebar_blue 2147483646
scoreboard players set *label_turn_type gaming_sidebar_purple 2147483646

scoreboard players set *label_blank1 gaming_sidebar 2147483645
scoreboard players set *label_blank1 gaming_sidebar_red 2147483645
scoreboard players set *label_blank1 gaming_sidebar_orange 2147483645
scoreboard players set *label_blank1 gaming_sidebar_yellow 2147483645
scoreboard players set *label_blank1 gaming_sidebar_green 2147483645
scoreboard players set *label_blank1 gaming_sidebar_blue 2147483645
scoreboard players set *label_blank1 gaming_sidebar_purple 2147483645

scoreboard players set *label_selected gaming_sidebar 2147483644
scoreboard players set *label_selected gaming_sidebar_red 2147483644
scoreboard players set *label_selected gaming_sidebar_orange 2147483644
scoreboard players set *label_selected gaming_sidebar_yellow 2147483644
scoreboard players set *label_selected gaming_sidebar_green 2147483644
scoreboard players set *label_selected gaming_sidebar_blue 2147483644
scoreboard players set *label_selected gaming_sidebar_purple 2147483644

scoreboard players set *label_time_limit gaming_sidebar 2147483643
scoreboard players set *label_time_limit gaming_sidebar_red 2147483643
scoreboard players set *label_time_limit gaming_sidebar_orange 2147483643
scoreboard players set *label_time_limit gaming_sidebar_yellow 2147483643
scoreboard players set *label_time_limit gaming_sidebar_green 2147483643
scoreboard players set *label_time_limit gaming_sidebar_blue 2147483643
scoreboard players set *label_time_limit gaming_sidebar_purple 2147483643

scoreboard players set *label_blank2 gaming_sidebar 2147483642
scoreboard players set *label_blank2 gaming_sidebar_red 2147483642
scoreboard players set *label_blank2 gaming_sidebar_orange 2147483642
scoreboard players set *label_blank2 gaming_sidebar_yellow 2147483642
scoreboard players set *label_blank2 gaming_sidebar_green 2147483642
scoreboard players set *label_blank2 gaming_sidebar_blue 2147483642
scoreboard players set *label_blank2 gaming_sidebar_purple 2147483642

scoreboard players set *label_my_team gaming_sidebar 2147483641
scoreboard players set *label_my_team gaming_sidebar_red 2147483641
scoreboard players set *label_my_team gaming_sidebar_orange 2147483641
scoreboard players set *label_my_team gaming_sidebar_yellow 2147483641
scoreboard players set *label_my_team gaming_sidebar_green 2147483641
scoreboard players set *label_my_team gaming_sidebar_blue 2147483641
scoreboard players set *label_my_team gaming_sidebar_purple 2147483641

scoreboard players set *label_active_teams gaming_sidebar 2147483640
scoreboard players set *label_active_teams gaming_sidebar_red 2147483640
scoreboard players set *label_active_teams gaming_sidebar_orange 2147483640
scoreboard players set *label_active_teams gaming_sidebar_yellow 2147483640
scoreboard players set *label_active_teams gaming_sidebar_green 2147483640
scoreboard players set *label_active_teams gaming_sidebar_blue 2147483640
scoreboard players set *label_active_teams gaming_sidebar_purple 2147483640

scoreboard players set *label_blank3 gaming_sidebar 2147483639
scoreboard players set *label_blank3 gaming_sidebar_red 2147483639
scoreboard players set *label_blank3 gaming_sidebar_orange 2147483639
scoreboard players set *label_blank3 gaming_sidebar_yellow 2147483639
scoreboard players set *label_blank3 gaming_sidebar_green 2147483639
scoreboard players set *label_blank3 gaming_sidebar_blue 2147483639
scoreboard players set *label_blank3 gaming_sidebar_purple 2147483639

scoreboard players reset *label_red_team_score gaming_sidebar
scoreboard players reset *label_orange_team_score gaming_sidebar
scoreboard players reset *label_yellow_team_score gaming_sidebar
scoreboard players reset *label_green_team_score gaming_sidebar
scoreboard players reset *label_blue_team_score gaming_sidebar
scoreboard players reset *label_purple_team_score gaming_sidebar

scoreboard players reset *label_red_team_score gaming_sidebar_red
scoreboard players reset *label_orange_team_score gaming_sidebar_red
scoreboard players reset *label_yellow_team_score gaming_sidebar_red
scoreboard players reset *label_green_team_score gaming_sidebar_red
scoreboard players reset *label_blue_team_score gaming_sidebar_red
scoreboard players reset *label_purple_team_score gaming_sidebar_red

scoreboard players reset *label_red_team_score gaming_sidebar_orange
scoreboard players reset *label_orange_team_score gaming_sidebar_orange
scoreboard players reset *label_yellow_team_score gaming_sidebar_orange
scoreboard players reset *label_green_team_score gaming_sidebar_orange
scoreboard players reset *label_blue_team_score gaming_sidebar_orange
scoreboard players reset *label_purple_team_score gaming_sidebar_orange

scoreboard players reset *label_red_team_score gaming_sidebar_yellow
scoreboard players reset *label_orange_team_score gaming_sidebar_yellow
scoreboard players reset *label_yellow_team_score gaming_sidebar_yellow
scoreboard players reset *label_green_team_score gaming_sidebar_yellow
scoreboard players reset *label_blue_team_score gaming_sidebar_yellow
scoreboard players reset *label_purple_team_score gaming_sidebar_yellow

scoreboard players reset *label_red_team_score gaming_sidebar_green
scoreboard players reset *label_orange_team_score gaming_sidebar_green
scoreboard players reset *label_yellow_team_score gaming_sidebar_green
scoreboard players reset *label_green_team_score gaming_sidebar_green
scoreboard players reset *label_blue_team_score gaming_sidebar_green
scoreboard players reset *label_purple_team_score gaming_sidebar_green

scoreboard players reset *label_red_team_score gaming_sidebar_blue
scoreboard players reset *label_orange_team_score gaming_sidebar_blue
scoreboard players reset *label_yellow_team_score gaming_sidebar_blue
scoreboard players reset *label_green_team_score gaming_sidebar_blue
scoreboard players reset *label_blue_team_score gaming_sidebar_blue
scoreboard players reset *label_purple_team_score gaming_sidebar_blue

scoreboard players reset *label_red_team_score gaming_sidebar_purple
scoreboard players reset *label_orange_team_score gaming_sidebar_purple
scoreboard players reset *label_yellow_team_score gaming_sidebar_purple
scoreboard players reset *label_green_team_score gaming_sidebar_purple
scoreboard players reset *label_blue_team_score gaming_sidebar_purple
scoreboard players reset *label_purple_team_score gaming_sidebar_purple


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar_red = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar_red = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar_red = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar_red = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar_red = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar_red = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar_orange = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar_orange = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar_orange = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar_orange = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar_orange = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar_orange = #purple total_score

execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar_yellow = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar_yellow = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar_yellow = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar_yellow = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar_yellow = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar_yellow = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar_green = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar_green = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar_green = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar_green = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar_green = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar_green = #purple total_score

execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar_blue = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar_blue = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar_blue = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar_blue = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar_blue = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar_blue = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score gaming_sidebar_purple = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score gaming_sidebar_purple = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score gaming_sidebar_purple = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score gaming_sidebar_purple = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score gaming_sidebar_purple = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score gaming_sidebar_purple = #purple total_score

scoreboard players display numberformat *label_current_turn gaming_sidebar blank
scoreboard players display numberformat *label_turn_type gaming_sidebar blank
scoreboard players display numberformat *label_blank1 gaming_sidebar blank
scoreboard players display numberformat *label_selected gaming_sidebar blank
scoreboard players display numberformat *label_time_limit gaming_sidebar blank
scoreboard players display numberformat *label_blank2 gaming_sidebar blank
scoreboard players display numberformat *label_my_team gaming_sidebar blank
scoreboard players display numberformat *label_active_teams gaming_sidebar blank
scoreboard players display numberformat *label_blank3 gaming_sidebar blank

scoreboard players display numberformat *label_current_turn gaming_sidebar_red blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_red blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_red blank
scoreboard players display numberformat *label_selected gaming_sidebar_red blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_red blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_red blank
scoreboard players display numberformat *label_my_team gaming_sidebar_red blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_red blank
scoreboard players display numberformat *label_blank3 gaming_sidebar_red blank

scoreboard players display numberformat *label_current_turn gaming_sidebar_orange blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_orange blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_orange blank
scoreboard players display numberformat *label_selected gaming_sidebar_orange blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_orange blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_orange blank
scoreboard players display numberformat *label_my_team gaming_sidebar_orange blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_orange blank
scoreboard players display numberformat *label_blank3 gaming_sidebar_orange blank

scoreboard players display numberformat *label_current_turn gaming_sidebar_yellow blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_yellow blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_yellow blank
scoreboard players display numberformat *label_selected gaming_sidebar_yellow blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_yellow blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_yellow blank
scoreboard players display numberformat *label_my_team gaming_sidebar_yellow blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_yellow blank
scoreboard players display numberformat *label_blank3 gaming_sidebar_yellow blank

scoreboard players display numberformat *label_current_turn gaming_sidebar_green blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_green blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_green blank
scoreboard players display numberformat *label_selected gaming_sidebar_green blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_green blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_green blank
scoreboard players display numberformat *label_my_team gaming_sidebar_green blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_green blank
scoreboard players display numberformat *label_blank3 gaming_sidebar_green blank

scoreboard players display numberformat *label_current_turn gaming_sidebar_blue blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_blue blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_blue blank
scoreboard players display numberformat *label_selected gaming_sidebar_blue blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_blue blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_blue blank
scoreboard players display numberformat *label_my_team gaming_sidebar_blue blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_blue blank
scoreboard players display numberformat *label_blank3 gaming_sidebar_blue blank

scoreboard players display numberformat *label_current_turn gaming_sidebar_purple blank
scoreboard players display numberformat *label_turn_type gaming_sidebar_purple blank
scoreboard players display numberformat *label_blank1 gaming_sidebar_purple blank
scoreboard players display numberformat *label_selected gaming_sidebar_purple blank
scoreboard players display numberformat *label_time_limit gaming_sidebar_purple blank
scoreboard players display numberformat *label_blank2 gaming_sidebar_purple blank
scoreboard players display numberformat *label_my_team gaming_sidebar_purple blank
scoreboard players display numberformat *label_active_teams gaming_sidebar_purple blank
scoreboard players display numberformat *label_blank3 gaming_sidebar_purple blank

# teleport players to selecting area
execute \
    as @a[sort=arbitrary,team=red] run \
        tp @s -64 63 22 90 0
execute \
    as @a[sort=arbitrary,team=orange] run \
        tp @s -64 63 6 90 0
execute \
    as @a[sort=arbitrary,team=yellow] run \
        tp @s -64 63 -10 90 0
execute \
    as @a[sort=arbitrary,team=green] run \
        tp @s -48 63 22 -90 0
execute \
    as @a[sort=arbitrary,team=blue] run \
        tp @s -48 63 6 -90 0
execute \
    as @a[sort=arbitrary,team=purple] run \
        tp @s -48 63 -10 -90 0
gamemode adventure @a[sort=arbitrary]

time set noon
weather clear

title @a[sort=arbitrary, team=!] times 10 100 20
execute \
    if score #turn_type temp matches 0 run \
        title @a[sort=arbitrary, team=!] subtitle [ \
            { \
                text: "本轮为", \
                color: "#CEAC88", \
                bold: true \
            }, \
            { \
                text: "【建筑轮】", \
                color: "green", \
                bold: true, \ 
            }, \
            { \
                text: "，请在 15 秒内选择你喜欢的主题", \
                color: "#CEAC88", \
                bold: true \
            } \
        ]
execute \
    if score #turn_type temp matches 1 run \
        title @a[sort=arbitrary, team=!] subtitle [ \
            { \
                text: "本轮为", \
                color: "#CEAC88", \
                bold: true \
            }, \
            { \
                text: "【红石轮】", \
                color: "red", \
                bold: true, \ 
            }, \
            { \
                text: "，请在 50 秒内选择你喜欢的问题", \
                color: "#CEAC88", \
                bold: true \
            } \
        ]

title @a[sort=arbitrary, team=!] title [ \
    { \
        text: "【红建工坊】第 ", \
        color: "#CCFF99", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#877894", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#877894", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#877894", \
        bold: true \
    }, \
    { \
        text: " 轮", \
        color: "#CCFF99", \
        bold: true \
    } \
]

function builder_and_redstoner:actions/start_turn_time_left

clear @a[team=!, sort=arbitrary]

scoreboard players reset @a right_check

execute \
    unless data storage builder_and_redstoner:config {config: {status: "SELECTING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "SELECTING"