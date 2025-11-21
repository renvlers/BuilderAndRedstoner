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
    store result entity @n[tag=memory_entity, type=interaction] data.bossbar_arguments.max_turns int 1 run \
        scoreboard players get #total_turns counter
execute \
    store result entity @n[tag=memory_entity, type=interaction] data.bossbar_arguments.current_turn int 1 run \
        scoreboard players get #current_turn counter

# set bossbar
function builder_and_redstoner:actions/set_bossbar_max with entity @n[tag=memory_entity, type=interaction] data.bossbar_arguments
function builder_and_redstoner:actions/set_bossbar_value with entity @n[tag=memory_entity, type=interaction] data.bossbar_arguments
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

# TODO: update sidebar

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

execute \
    unless data storage builder_and_redstoner:config {config: {status: "SELECTING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "SELECTING"