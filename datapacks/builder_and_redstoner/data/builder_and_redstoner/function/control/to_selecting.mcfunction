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
                text: "【红建工坊：建筑轮】第 ", \
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
                text: " 轮", \
                color: "green", \
                bold: true \
            } \
        ]
execute \
    if score #turn_type temp matches 1 run \
        bossbar set builder_and_redstoner:current_turn name [ \
            { \
                text: "【红建工坊：红石轮】第 ", \
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
                text: " 轮", \
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

# load random themes/problems for selection
execute \
    if score #turn_type temp matches 0 run \
        function builder_and_redstoner:actions/get_random_themes with storage builder_and_redstoner:themes
execute \
    if score #turn_type temp matches 1 run \
        function builder_and_redstoner:actions/get_random_problems with storage builder_and_redstoner:problems

scoreboard players reset @a selection
execute \
    if score #turn_type temp matches 0 run \
        function builder_and_redstoner:actions/set_selecting_theme_ender_chest
execute \
    if score #turn_type temp matches 1 run \
        function builder_and_redstoner:actions/set_selecting_problem_ender_chest

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

# TODO: start to_gaming timeleft

# teleport players to selecting area
execute \
    as @a[team=red] run \
        tp @s 5077 66 3 180 0
execute \
    as @a[team=orange] run \
        tp @s 5091 66 3 180 0
execute \
    as @a[team=yellow] run \
        tp @s 5105 66 3 180 0
execute \
    as @a[team=green] run \
        tp @s 5077 66 11 0 0
execute \
    as @a[team=blue] run \
        tp @s 5091 66 11 0 0
execute \
    as @a[team=purple] run \
        tp @s 5105 66 11 0 0

gamemode adventure @a

title @a times 10 100 20
execute \
    if score #turn_type temp matches 0 run \
        title @a subtitle [ \
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
                text: "，请选择你喜欢的主题", \
                color: "#CEAC88", \
                bold: true \
            } \
        ]
execute \
    if score #turn_type temp matches 1 run \
        title @a subtitle [ \
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
                text: "，请选择你喜欢的问题", \
                color: "#CEAC88", \
                bold: true \
            } \
        ]

title @a title [ \
    { \
        text: "第 ", \
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

execute \
    unless data storage builder_and_redstoner:config {config: {status: "SELECTING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "SELECTING"