execute \
    unless score #start_timeleft temp matches 1..4 run \
        scoreboard players set #start_timeleft temp 5

execute \
    if score #start_timeleft temp matches 1..4 run \
        title @a times 0 30 0

execute \
    if score #start_timeleft temp matches 4..5 run \
        title @a subtitle [ \
            { \
                text: "游戏将在 ", \
                color: "white", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#start_timeleft", \
                    objective: "temp" \
                }, \
                color: "green", \
                bold: true \
            }, \
            { \
                text: " 秒后开始", \
                color: "white", \
                bold: true \
            } \
        ]
execute \
    if score #start_timeleft temp matches 1..3 run \
        title @a subtitle [ \
            { \
                text: "游戏将在 ", \
                color: "white", \
                bold: true \
            }, \
            { \
                type: "score", \
                score: { \
                    name: "#start_timeleft", \
                    objective: "temp" \
                }, \
                color: "red", \
                bold: true \
            }, \
            { \
                text: " 秒后开始", \
                color: "white", \
                bold: true \
            } \
        ]

title @a title { \
    text: "欢迎来到红建工坊", \
    color: "#CCFF99", \
    bold: true \
}

execute \
    if score #start_timeleft temp matches 4..5 run \
        playsound minecraft:block.note_block.bell master @a ~ ~ ~ 10000000 1
execute \
    if score #start_timeleft temp matches 1..3 run \
        playsound minecraft:block.note_block.bell master @a ~ ~ ~ 10000000 1.4

scoreboard players remove #start_timeleft temp 1

execute \
    if score #start_timeleft temp matches 0 run \
        schedule function builder_and_redstoner:actions/start_game 1s

execute \
    if score #start_timeleft temp matches 1..5 run \
        schedule function builder_and_redstoner:actions/start_game_timeleft 1s