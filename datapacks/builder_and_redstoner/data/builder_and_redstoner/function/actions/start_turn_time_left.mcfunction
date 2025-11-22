execute \
    unless score #start_turn_timeleft temp matches 1..14 run \
        scoreboard players set #start_turn_timeleft temp 15

execute \
    if score #start_turn_timeleft temp matches 1..4 run \
        title @a times 0 30 0

execute \
    if score #start_turn_timeleft temp matches 4..5 run \
        title @a subtitle [ \
            { \
                text: "剩余 ", \
                color: "#7FACFF", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#start_turn_timeleft", \
                    objective: "temp" \
                }, \
                color: "green", \
                bold: true \
            }, \
            { \
                text: " 秒", \
                color: "#7FACFF", \
                bold: true \
            } \
        ]
execute \
    if score #start_turn_timeleft temp matches 1..3 run \
        title @a subtitle [ \
            { \
                text: "剩余 ", \
                color: "#7FACFF", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#start_turn_timeleft", \
                    objective: "temp" \
                }, \
                color: "red", \
                bold: true \
            }, \
            { \
                text: " 秒", \
                color: "#7FACFF", \
                bold: true \
            } \
        ]

execute \
    if score #start_turn_timeleft temp matches 1..5 run \
        title @a title { \
            text: "比赛即将开始", \
            color: "#CCFF99", \
            bold: true \
        }

execute \
    if score #start_turn_timeleft temp matches 4..5 run \
        playsound minecraft:block.note_block.harp master @a ~ ~ ~ 10000000 1
execute \
    if score #start_turn_timeleft temp matches 1..3 run \
        playsound minecraft:block.note_block.harp master @a ~ ~ ~ 10000000 1.4

scoreboard players remove #start_turn_timeleft temp 1

execute \
    if score #start_turn_timeleft temp matches 1..14 run \
        schedule function builder_and_redstoner:actions/start_turn_time_left 1s
execute \
    if score #start_turn_timeleft temp matches 0 run \
        schedule function builder_and_redstoner:control/to_gaming 1s