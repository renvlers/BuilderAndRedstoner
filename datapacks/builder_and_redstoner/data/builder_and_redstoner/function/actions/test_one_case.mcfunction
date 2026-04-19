execute unless score #current_test_case counter matches -2147483648..2147483647 run scoreboard players set #current_test_case counter 0

scoreboard players set #point_idx temp 1
scoreboard players operation #point_idx temp += #current_test_case counter

tellraw @a[team=!] [ \
    { \
        text: "【测试点 ", \
        color: "light_purple", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#point_idx", \
            objective: "temp" \
        }, \
        color: "light_purple", \
        bold: true \
    }, \
    { \
        text: "】开始测试", \
        color: "light_purple", \
        bold: true \
    } \
]

execute if score #current_test_case counter matches 0 run data modify storage builder_and_redstoner:memory data.current_test_case_index set from storage builder_and_redstoner:memory data.current_test_cases[0].id
execute if score #current_test_case counter matches 1 run data modify storage builder_and_redstoner:memory data.current_test_case_index set from storage builder_and_redstoner:memory data.current_test_cases[1].id
execute if score #current_test_case counter matches 2 run data modify storage builder_and_redstoner:memory data.current_test_case_index set from storage builder_and_redstoner:memory data.current_test_cases[2].id
execute if score #current_test_case counter matches 3 run data modify storage builder_and_redstoner:memory data.current_test_case_index set from storage builder_and_redstoner:memory data.current_test_cases[3].id
function builder_and_redstoner:actions/load_test_case with storage builder_and_redstoner:memory data
function builder_and_redstoner:actions/load_test_pos

function builder_and_redstoner:actions/set_input_blocks
scoreboard players set #test_pass temp 1
schedule function builder_and_redstoner:actions/check_output_blocks 5s
schedule function builder_and_redstoner:actions/get_test_result 5s

scoreboard players add #current_test_case counter 1
execute if score #current_test_case counter matches 0..3 run schedule function builder_and_redstoner:actions/test_one_case 5s
execute if score #current_test_case counter matches 4 if score #teams_left counter matches 0 run schedule function builder_and_redstoner:actions/end_current_turn 5s