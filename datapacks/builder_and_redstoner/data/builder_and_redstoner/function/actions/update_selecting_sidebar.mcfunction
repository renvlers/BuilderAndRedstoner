# update lobby sidebar labels
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_red [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_orange [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_yellow [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_green [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_blue [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_purple [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "主题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]

execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_red [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_orange [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_yellow [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_green [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_blue [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_you_are_at gaming_sidebar_purple [\ 
        { \
            text: "我的位置：", \
            color: "#35ECE2", \
            bold: true \
        }, \
        { \
            text: "问题选择区", \
            color: "#CCFF99", \
            bold: true \
        } \
    ]

scoreboard players display name *label_blank0 gaming_sidebar ""
scoreboard players display name *label_blank0 gaming_sidebar_red ""
scoreboard players display name *label_blank0 gaming_sidebar_orange ""
scoreboard players display name *label_blank0 gaming_sidebar_yellow ""
scoreboard players display name *label_blank0 gaming_sidebar_green ""
scoreboard players display name *label_blank0 gaming_sidebar_blue ""
scoreboard players display name *label_blank0 gaming_sidebar_purple ""

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

execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_red [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_orange [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_yellow [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_green [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_blue [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_selected gaming_sidebar_purple [ \
        { \
            text: "本轮主题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]

execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_red [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_orange [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_yellow [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_green [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_blue [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_selected gaming_sidebar_purple [ \
        { \
            text: "本轮问题：", \
            color: "#FFFF55", \
            bold: true \
        }, \
        { \
            text: "待定", \
            color: "gray" \
        } \
    ]

execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar_red [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar_orange [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar_yellow [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar_green [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar_blue [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 0 run \
    scoreboard players display name *label_time_limit gaming_sidebar_purple [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "5 分钟", \
            color: "#33EEEE" \
        } \
    ]

execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar_red [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar_orange [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar_yellow [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar_green [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar_blue [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
        } \
    ]
execute if score #turn_type temp matches 1 run \
    scoreboard players display name *label_time_limit gaming_sidebar_purple [ \
        { \
            text: "时间限制：", \
            color: "#4AA7CF", \
            bold: true \
        }, \
        { \
            text: "10 分钟", \
            color: "#33EEEE" \
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