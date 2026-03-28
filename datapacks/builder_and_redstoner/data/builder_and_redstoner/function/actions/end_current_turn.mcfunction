execute if score #turn_type temp matches 0 run function builder_and_redstoner:actions/count_votes
gamemode adventure @a[team=!]
kill @e[type=interaction, tag=click_detector]
execute as @a[team=!] run attribute @s minecraft:attack_damage base set 1

# show scores of this turn using tellraw
tellraw @a [ \
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

tellraw @a { \
    text: "【红建工坊】本轮得分情况\n", \
    color: "#CCFF99", \
    bold: true \
}
execute if score #red_team_count player_count matches 1.. run tellraw @a [ \
    { \
        text: "【红队】", \
        color: "red", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#red", objective: "vote" } \
    }, \
    { \
        text: " 分", \
        color: "red", \
        bold: true \
    } \
]
execute if score #orange_team_count player_count matches 1.. run tellraw @a [ \
    { \
        text: "【橙队】", \
        color: "gold", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#orange", objective: "vote" } \
    }, \
    { \
        text: " 分", \
        color: "gold", \
        bold: true \
    } \
]
execute if score #yellow_team_count player_count matches 1.. run tellraw @a [ \
    { \
        text: "【黄队】", \
        color: "yellow", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#yellow", objective: "vote" } \
    }, \
    { \
        text: " 分", \
        color: "yellow", \
        bold: true \
    } \
]
execute if score #green_team_count player_count matches 1.. run tellraw @a [ \
    { \
        text: "【绿队】", \
        color: "green", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#green", objective: "vote" } \
    }, \
    { \
        text: " 分", \
        color: "green", \
        bold: true \
    } \
]
execute if score #blue_team_count player_count matches 1.. run tellraw @a [ \
    { \
        text: "【蓝队】", \
        color: "blue", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#blue", objective: "vote" } \
    }, \
    { \
        text: " 分", \
        color: "blue", \
        bold: true \
    } \
]
execute if score #purple_team_count player_count matches 1.. run tellraw @a [ \
    { \
        text: "【紫队】", \
        color: "dark_purple", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { name: "#purple", objective: "vote" } \
    }, \
    { \
        text: " 分", \
        color: "dark_purple", \
        bold: true \
    } \
]

tellraw @a [ \
    "\n", \
    { \
        text: "                               ", \
        color: "white", \
        bold: true, \
        strikethrough: true \
    } \
]

scoreboard players operation #red total_score += #red vote
scoreboard players operation #orange total_score += #orange vote
scoreboard players operation #yellow total_score += #yellow vote
scoreboard players operation #green total_score += #green vote
scoreboard players operation #blue total_score += #blue vote
scoreboard players operation #purple total_score += #purple vote

execute if score #current_turn counter < #total_turns counter run playsound minecraft:entity.player.levelup master @a[team=!] 5091 66 7 1000000000 1

execute if score #current_turn counter = #total_turns counter run function builder_and_redstoner:control/to_rewarding
execute if score #current_turn counter < #total_turns counter run function builder_and_redstoner:control/to_selecting