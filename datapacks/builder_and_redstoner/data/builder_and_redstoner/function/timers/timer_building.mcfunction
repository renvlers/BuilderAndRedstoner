execute unless score #timer_building counter matches 1..599 run scoreboard players set #timer_building counter 600

execute if score #timer_building counter matches 1..10 run title @a[team=!, sort=arbitrary] actionbar [ \
    { \
        text: "距离比赛结束还有 ", \
        color: "aqua", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#timer_building", \
            objective: "counter" \
        }, \
        color: "red", \
        bold: true \
    }, \
    { \
        text: " 秒", \
        color: "aqua", \
        bold: true \
    }, \
]

execute if score #timer_building counter matches 1..10 run playsound minecraft:block.note_block.hat master @a[sort=arbitrary] ~ ~ ~ 10000000 1

scoreboard players remove #timer_building counter 1

execute if score #timer_building counter matches 1..599 run schedule function builder_and_redstoner:timers/timer_building 1s
execute if score #timer_building counter matches 0 run schedule function builder_and_redstoner:control/to_endturn 1s