scoreboard players display name *label_current_turn gaming_sidebar [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]
scoreboard players display name *label_current_turn gaming_sidebar_red [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]
scoreboard players display name *label_current_turn gaming_sidebar_orange [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]
scoreboard players display name *label_current_turn gaming_sidebar_yellow [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]
scoreboard players display name *label_current_turn gaming_sidebar_green [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]
scoreboard players display name *label_current_turn gaming_sidebar_blue [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]
scoreboard players display name *label_current_turn gaming_sidebar_purple [ \
    { \
        text: "当前轮次：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#current_turn", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        text: " / ", \
        color: "#CFEC68", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#total_turns", \
            objective: "counter" \
        }, \
        color: "#CFEC68", \
        bold: true \
    } \
]

execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar_red [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar_orange [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar_yellow [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar_green [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar_blue [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_turn_type gaming_sidebar_purple [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "建筑轮", \
            color: "green", \
            bold: true \
        } \
    ]

execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar_red [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar_orange [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar_yellow [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar_green [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar_blue [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_turn_type gaming_sidebar_purple [ \
        { \
            text: "本轮类型：", \
            color: "#FF99CC", \
            bold: true \
        }, \
        { \
            text: "红石轮", \
            color: "red", \
            bold: true \
        } \
    ]

scoreboard players display name *label_blank1 gaming_sidebar ""
scoreboard players display name *label_blank1 gaming_sidebar_red ""
scoreboard players display name *label_blank1 gaming_sidebar_orange ""
scoreboard players display name *label_blank1 gaming_sidebar_yellow ""
scoreboard players display name *label_blank1 gaming_sidebar_green ""
scoreboard players display name *label_blank1 gaming_sidebar_blue ""
scoreboard players display name *label_blank1 gaming_sidebar_purple ""

$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_red [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_orange [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_yellow [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_green [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_blue [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_purple [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_themes[$(current_selection)].name", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]

$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_red [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_orange [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_yellow [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_green [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_blue [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]
$execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_purple [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            type: "nbt", \
            nbt: "data.selected_problems[$(current_selection)].title", \
            storage: "builder_and_redstoner:memory", \
            color: "#EEFF99", \
            bold: true \
        } \
    ]

scoreboard players display name *label_time_limit gaming_sidebar [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_time_limit gaming_sidebar_red [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_time_limit gaming_sidebar_orange [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_time_limit gaming_sidebar_yellow [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_time_limit gaming_sidebar_green [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_time_limit gaming_sidebar_blue [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_time_limit gaming_sidebar_purple [ \
    { \
        text: "剩余时间：", \
        color: "#4AA7CF", \
        bold: true \
    }, \
    { \
        text: "00:00", \
        color: "red", \
        bold: true \
    } \
]

scoreboard players display name *label_blank2 gaming_sidebar ""
scoreboard players display name *label_blank2 gaming_sidebar_red ""
scoreboard players display name *label_blank2 gaming_sidebar_orange ""
scoreboard players display name *label_blank2 gaming_sidebar_yellow ""
scoreboard players display name *label_blank2 gaming_sidebar_green ""
scoreboard players display name *label_blank2 gaming_sidebar_blue ""
scoreboard players display name *label_blank2 gaming_sidebar_purple ""

scoreboard players display name *label_my_team gaming_sidebar [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "未加入", \
        color: "#AEAEAE", \
        bold: true \
    } \
]
scoreboard players display name *label_my_team gaming_sidebar_red [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "红队", \
        color: "red", \
        bold: true \
    } \
]
scoreboard players display name *label_my_team gaming_sidebar_orange [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "橙队", \
        color: "gold", \
        bold: true \
    } \
]
scoreboard players display name *label_my_team gaming_sidebar_yellow [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "黄队", \
        color: "yellow", \
        bold: true \
    } \
]
scoreboard players display name *label_my_team gaming_sidebar_green [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "绿队", \
        color: "green", \
        bold: true \
    } \
]
scoreboard players display name *label_my_team gaming_sidebar_blue [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "蓝队", \
        color: "blue", \
        bold: true \
    } \
]
scoreboard players display name *label_my_team gaming_sidebar_purple [ \
    { \
        text: "我的队伍：", \
        color: "#FF99CC", \
        bold: true \
    }, \
    { \
        text: "紫队", \
        color: "dark_purple", \
        bold: true \
    } \
]

scoreboard players display name *label_active_teams gaming_sidebar [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]
scoreboard players display name *label_active_teams gaming_sidebar_red [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]
scoreboard players display name *label_active_teams gaming_sidebar_orange [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]
scoreboard players display name *label_active_teams gaming_sidebar_yellow [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]
scoreboard players display name *label_active_teams gaming_sidebar_green [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]
scoreboard players display name *label_active_teams gaming_sidebar_blue [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]
scoreboard players display name *label_active_teams gaming_sidebar_purple [ \
    { \
        text: "活跃队伍：", \
        color: "#FFA500", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#active_teams", \
            objective: "temp" \
        }, \
        color: "#A3A0EC", \
        bold: true \
    } \
]

scoreboard players display name *label_blank3 gaming_sidebar ""
scoreboard players display name *label_blank3 gaming_sidebar_red ""
scoreboard players display name *label_blank3 gaming_sidebar_orange ""
scoreboard players display name *label_blank3 gaming_sidebar_yellow ""
scoreboard players display name *label_blank3 gaming_sidebar_green ""
scoreboard players display name *label_blank3 gaming_sidebar_blue ""
scoreboard players display name *label_blank3 gaming_sidebar_purple ""

execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar { text: "红队得分", color: "red", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar_red { text: "红队得分", color: "red", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar_orange { text: "红队得分", color: "red", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar_yellow { text: "红队得分", color: "red", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar_green { text: "红队得分", color: "red", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar_blue { text: "红队得分", color: "red", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display name *label_red_team_score gaming_sidebar_purple { text: "红队得分", color: "red", bold: true }

execute if score #orange_team_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar { text: "橙队得分", color: "gold", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar_red { text: "橙队得分", color: "gold", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar_orange { text: "橙队得分", color: "gold", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar_yellow { text: "橙队得分", color: "gold", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar_green { text: "橙队得分", color: "gold", bold: true }
execute if score #orangeTeam_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar_blue { text: "橙队得分", color: "gold", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display name *label_orange_team_score gaming_sidebar_purple { text: "橙队得分", color: "gold", bold: true }

execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar { text: "黄队得分", color: "yellow", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar_red { text: "黄队得分", color: "yellow", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar_orange { text: "黄队得分", color: "yellow", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar_yellow { text: "黄队得分", color: "yellow", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar_green { text: "黄队得分", color: "yellow", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar_blue { text: "黄队得分", color: "yellow", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display name *label_yellow_team_score gaming_sidebar_purple { text: "黄队得分", color: "yellow", bold: true }

execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar { text: "绿队得分", color: "green", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar_red { text: "绿队得分", color: "green", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar_orange { text: "绿队得分", color: "green", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar_yellow { text: "绿队得分", color: "green", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar_green { text: "绿队得分", color: "green", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar_blue { text: "绿队得分", color: "green", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display name *label_green_team_score gaming_sidebar_purple { text: "绿队得分", color: "green", bold: true }

execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar { text: "蓝队得分", color: "blue", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar_red { text: "蓝队得分", color: "blue", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar_orange { text: "蓝队得分", color: "blue", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar_yellow { text: "蓝队得分", color: "blue", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar_green { text: "蓝队得分", color: "blue", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar_blue { text: "蓝队得分", color: "blue", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display name *label_blue_team_score gaming_sidebar_purple { text: "蓝队得分", color: "blue", bold: true }

execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar { text: "紫队得分", color: "dark_purple", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar_red { text: "紫队得分", color: "dark_purple", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar_orange { text: "紫队得分", color: "dark_purple", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar_yellow { text: "紫队得分", color: "dark_purple", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar_green { text: "紫队得分", color: "dark_purple", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar_blue { text: "紫队得分", color: "dark_purple", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display name *label_purple_team_score gaming_sidebar_purple { text: "紫队得分", color: "dark_purple", bold: true }

execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar_red fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar_orange fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar_yellow fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar_green fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar_blue fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #red_team_count player_count matches 1.. run scoreboard players display numberformat *label_red_team_score gaming_sidebar_purple fixed { type: "score", score: {name: "#red", objective: "total_score"}, color: "#CCFF99", bold: true }

execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar_red fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar_orange fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar_yellow fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar_green fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar_blue fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #orange_team_count player_count matches 1.. run scoreboard players display numberformat *label_orange_team_score gaming_sidebar_purple fixed { type: "score", score: {name: "#orange", objective: "total_score"}, color: "#CCFF99", bold: true }

execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar_red fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar_orange fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar_yellow fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar_green fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar_blue fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #yellow_team_count player_count matches 1.. run scoreboard players display numberformat *label_yellow_team_score gaming_sidebar_purple fixed { type: "score", score: {name: "#yellow", objective: "total_score"}, color: "#CCFF99", bold: true }

execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar_red fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar_orange fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar_yellow fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar_green fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar_blue fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #green_team_count player_count matches 1.. run scoreboard players display numberformat *label_green_team_score gaming_sidebar_purple fixed { type: "score", score: {name: "#green", objective: "total_score"}, color: "#CCFF99", bold: true }

execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar_red fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar_orange fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar_yellow fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar_green fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar_blue fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #blue_team_count player_count matches 1.. run scoreboard players display numberformat *label_blue_team_score gaming_sidebar_purple fixed { type: "score", score: {name: "#blue", objective: "total_score"}, color: "#CCFF99", bold: true }

execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar_red fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar_orange fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar_yellow fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar_green fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar_blue fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }
execute if score #purple_team_count player_count matches 1.. run scoreboard players display numberformat *label_purple_team_score gaming_sidebar_purple fixed { type: "score", score: {name: "#purple", objective: "total_score"}, color: "#CCFF99", bold: true }