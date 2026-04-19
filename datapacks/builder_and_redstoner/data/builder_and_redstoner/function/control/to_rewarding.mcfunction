clear @a[sort=arbitrary]
gamemode adventure @a[sort=arbitrary]
tp @a[sort=arbitrary] 58 66 6 90 0

bossbar set builder_and_redstoner:current_turn visible false

execute as @a[sort=arbitrary] run function builder_and_redstoner:actions/set_effects

function builder_and_redstoner:actions/get_rank

scoreboard objectives setdisplay sidebar lobby_sidebar
scoreboard objectives setdisplay sidebar.team.red lobby_sidebar_red
scoreboard objectives setdisplay sidebar.team.gold lobby_sidebar_orange
scoreboard objectives setdisplay sidebar.team.yellow lobby_sidebar_yellow
scoreboard objectives setdisplay sidebar.team.green lobby_sidebar_green
scoreboard objectives setdisplay sidebar.team.blue lobby_sidebar_blue
scoreboard objectives setdisplay sidebar.team.dark_purple lobby_sidebar_purple

title @a[sort=arbitrary] reset
execute if score #red_team_count player_count matches 1.. run title @a[sort=arbitrary,team=red] subtitle [ \
    { \
        text: "队伍得分：", \
        color: "aqua", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#red", objective: "total_score" }, \
        color: "aqua", \
        bold: true \
    }, \
    { \
        text: "，队伍排名：", \
        color: "aqua", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#red", objective: "rank"}, \
        color: "aqua", \
        bold: true \
    } \
]

execute if score #orange_team_count player_count matches 1.. run title @a[sort=arbitrary,team=orange] subtitle [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#orange", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#orange", objective: "rank" }, color: "aqua", bold: true } \
]

execute if score #yellow_team_count player_count matches 1.. run title @a[sort=arbitrary,team=yellow] subtitle [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#yellow", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#yellow", objective: "rank" }, color: "aqua", bold: true } \
]

execute if score #green_team_count player_count matches 1.. run title @a[sort=arbitrary,team=green] subtitle [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#green", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#green", objective: "rank" }, color: "aqua", bold: true } \
]

execute if score #blue_team_count player_count matches 1.. run title @a[sort=arbitrary,team=blue] subtitle [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#blue", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#blue", objective: "rank" }, color: "aqua", bold: true } \
]

execute if score #purple_team_count player_count matches 1.. run title @a[sort=arbitrary,team=purple] subtitle [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#purple", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#purple", objective: "rank" }, color: "aqua", bold: true } \
]

tellraw @a[sort=arbitrary] [ \
    { \
        text: "                               ", \
        color: "white", \
        bold: true, \
        strikethrough: true \
    }, \
    { \
        text: "\n" , \
        strikethrough: false \
    } \
]

tellraw @a[sort=arbitrary] { \
    text: "\n【红建工坊】游戏结束！\n", \
    color: "gold", \
    bold: true \
}

execute if score #red_team_count player_count matches 1.. run tellraw @a[sort=arbitrary,team=red] [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#red", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#red", objective: "rank" }, color: "aqua", bold: true }, \
    { text: "\n" } \
]

execute if score #orange_team_count player_count matches 1.. run tellraw @a[sort=arbitrary,team=orange] [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#orange", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#orange", objective: "rank" }, color: "aqua", bold: true }, \
    { text: "\n" } \
]

execute if score #yellow_team_count player_count matches 1.. run tellraw @a[sort=arbitrary,team=yellow] [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#yellow", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#yellow", objective: "rank" }, color: "aqua", bold: true }, \
    { text: "\n" } \
]

execute if score #green_team_count player_count matches 1.. run tellraw @a[sort=arbitrary,team=green] [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#green", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#green", objective: "rank" }, color: "aqua", bold: true }, \
    { text: "\n" } \
]

execute if score #blue_team_count player_count matches 1.. run tellraw @a[sort=arbitrary,team=blue] [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#blue", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#blue", objective: "rank" }, color: "aqua", bold: true }, \
    { text: "\n" } \
]

execute if score #purple_team_count player_count matches 1.. run tellraw @a[sort=arbitrary,team=purple] [ \
    { text: "队伍得分：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#purple", objective: "total_score" }, color: "aqua", bold: true }, \
    { text: "，队伍排名：", color: "aqua", bold: true }, \
    { type: "score", score: { name: "#purple", objective: "rank" }, color: "aqua", bold: true }, \
    { text: "\n" } \
]

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 100000000 1

title @a[sort=arbitrary,team=!] title { text: "游戏结束", color: "#CCFF99", bold: true }

data modify storage builder_and_redstoner:memory data.first set value []
data modify storage builder_and_redstoner:memory data.second set value []
data modify storage builder_and_redstoner:memory data.third set value []

execute if score #red rank matches 1 run data modify storage builder_and_redstoner:memory data.first append value {text:"【红队】",color:"red",bold:true}
execute if score #red rank matches 2 run data modify storage builder_and_redstoner:memory data.second append value {text:"【红队】",color:"red",bold:true}
execute if score #red rank matches 3 run data modify storage builder_and_redstoner:memory data.third append value {text:"【红队】",color:"red",bold:true}

execute if score #orange rank matches 1 run data modify storage builder_and_redstoner:memory data.first append value {text:"【橙队】",color:"gold",bold:true}
execute if score #orange rank matches 2 run data modify storage builder_and_redstoner:memory data.second append value {text:"【橙队】",color:"gold",bold:true}
execute if score #orange rank matches 3 run data modify storage builder_and_redstoner:memory data.third append value {text:"【橙队】",color:"gold",bold:true}

execute if score #yellow rank matches 1 run data modify storage builder_and_redstoner:memory data.first append value {text:"【黄队】",color:"yellow",bold:true}
execute if score #yellow rank matches 2 run data modify storage builder_and_redstoner:memory data.second append value {text:"【黄队】",color:"yellow",bold:true}
execute if score #yellow rank matches 3 run data modify storage builder_and_redstoner:memory data.third append value {text:"【黄队】",color:"yellow",bold:true}

execute if score #green rank matches 1 run data modify storage builder_and_redstoner:memory data.first append value {text:"【绿队】",color:"green",bold:true}
execute if score #green rank matches 2 run data modify storage builder_and_redstoner:memory data.second append value {text:"【绿队】",color:"green",bold:true}
execute if score #green rank matches 3 run data modify storage builder_and_redstoner:memory data.third append value {text:"【绿队】",color:"green",bold:true}

execute if score #blue rank matches 1 run data modify storage builder_and_redstoner:memory data.first append value {text:"【蓝队】",color:"blue",bold:true}
execute if score #blue rank matches 2 run data modify storage builder_and_redstoner:memory data.second append value {text:"【蓝队】",color:"blue",bold:true}
execute if score #blue rank matches 3 run data modify storage builder_and_redstoner:memory data.third append value {text:"【蓝队】",color:"blue",bold:true}

execute if score #purple rank matches 1 run data modify storage builder_and_redstoner:memory data.first append value {text:"【紫队】",color:"dark_purple",bold:true}
execute if score #purple rank matches 2 run data modify storage builder_and_redstoner:memory data.second append value {text:"【紫队】",color:"dark_purple",bold:true}
execute if score #purple rank matches 3 run data modify storage builder_and_redstoner:memory data.third append value {text:"【紫队】",color:"dark_purple",bold:true}

execute if score #active_teams temp matches ..2 run schedule function builder_and_redstoner:actions/select_2nd 5s
execute if score #active_teams temp matches ..2 run schedule function builder_and_redstoner:actions/select_1st 7s

execute if score #active_teams temp matches ..2 run schedule function builder_and_redstoner:control/to_lobby 17s


execute if score #active_teams temp matches 3.. run schedule function builder_and_redstoner:actions/select_3rd 5s
execute if score #active_teams temp matches 3.. run schedule function builder_and_redstoner:actions/select_2nd 7s
execute if score #active_teams temp matches 3.. run schedule function builder_and_redstoner:actions/select_1st 9s

execute if score #active_teams temp matches 3.. run schedule function builder_and_redstoner:control/to_lobby 19s

time set day
weather clear

scoreboard players set *label_blank3 lobby_sidebar 2147483637
scoreboard players set *label_blank3 lobby_sidebar_red 2147483637
scoreboard players set *label_blank3 lobby_sidebar_orange 2147483637
scoreboard players set *label_blank3 lobby_sidebar_yellow 2147483637
scoreboard players set *label_blank3 lobby_sidebar_green 2147483637
scoreboard players set *label_blank3 lobby_sidebar_blue 2147483637
scoreboard players set *label_blank3 lobby_sidebar_purple 2147483637

scoreboard players display numberformat *label_blank3 lobby_sidebar blank
scoreboard players display numberformat *label_blank3 lobby_sidebar_red blank
scoreboard players display numberformat *label_blank3 lobby_sidebar_orange blank
scoreboard players display numberformat *label_blank3 lobby_sidebar_yellow blank
scoreboard players display numberformat *label_blank3 lobby_sidebar_green blank
scoreboard players display numberformat *label_blank3 lobby_sidebar_blue blank
scoreboard players display numberformat *label_blank3 lobby_sidebar_purple blank

execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar_red = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar_red = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar_red = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar_red = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar_red = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar_red = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar_orange = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar_orange = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar_orange = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar_orange = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar_orange = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar_orange = #purple total_score

execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar_yellow = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar_yellow = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar_yellow = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar_yellow = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar_yellow = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar_yellow = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar_green = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar_green = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar_green = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar_green = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar_green = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar_green = #purple total_score

execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar_blue = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar_blue = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar_blue = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar_blue = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar_blue = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar_blue = #purple total_score


execute if score #red_team_count player_count matches 1.. run scoreboard players operation *label_red_team_score lobby_sidebar_purple = #red total_score
execute if score #orange_team_count player_count matches 1.. run scoreboard players operation *label_orange_team_score lobby_sidebar_purple = #orange total_score
execute if score #yellow_team_count player_count matches 1.. run scoreboard players operation *label_yellow_team_score lobby_sidebar_purple = #yellow total_score
execute if score #green_team_count player_count matches 1.. run scoreboard players operation *label_green_team_score lobby_sidebar_purple = #green total_score
execute if score #blue_team_count player_count matches 1.. run scoreboard players operation *label_blue_team_score lobby_sidebar_purple = #blue total_score
execute if score #purple_team_count player_count matches 1.. run scoreboard players operation *label_purple_team_score lobby_sidebar_purple = #purple total_score

scoreboard players reset @a right_check

execute as @a[team=, sort=arbitrary] at @s run spectate @r[team=!, sort=arbitrary, limit=1]

execute \
    unless data storage builder_and_redstoner:config {config: {status: "REWARDING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "REWARDING"