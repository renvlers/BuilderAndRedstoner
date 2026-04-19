scoreboard players set #has_executed temp 1
scoreboard players set #purple voted 1
scoreboard players set #current_team temp 5
scoreboard players reset * vote_player
gamemode spectator @a[team=!]
tp @a[team=!] 10319 75 45 90 15
schedule function builder_and_redstoner:actions/set_gamemode_to_creative 3t
title @a[team=!] reset
title @a[team=!] title [ \
    { \
        text: "正在为", \
        color: "aqua", \
        bold: true \
    }, \
    { \
        text: "【紫队】", \
        color: "dark_purple", \
        bold: true \
    }, \
    { \
        text: "投票", \
        color: "aqua", \
        bold: true \
    } \
]

function builder_and_redstoner:actions/set_world_time_and_weather with storage builder_and_redstoner:memory data.time_and_weather.purple

scoreboard players reset @a[team=!] vote_player
function builder_and_redstoner:timers/timer_voting