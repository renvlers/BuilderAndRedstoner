scoreboard players set #has_executed temp 1
scoreboard players set #blue voted 1
scoreboard players set #current_team temp 4
scoreboard players reset * vote_player
gamemode spectator @a[team=!]
tp @a[team=!] 10272 75 45 90 15
schedule function builder_and_redstoner:actions/set_gamemode_to_creative 3t
title @a[team=!] reset
title @a[team=!] title [ \
    { \
        text: "正在为", \
        color: "aqua", \
        bold: true \
    }, \
    { \
        text: "【蓝队】", \
        color: "blue", \
        bold: true \
    }, \
    { \
        text: "投票", \
        color: "aqua", \
        bold: true \
    } \
]

function builder_and_redstoner:actions/set_world_time_and_weather with storage builder_and_redstoner:memory data.time_and_weather.blue

scoreboard players reset @a[team=!] vote_player
function builder_and_redstoner:timers/timer_voting