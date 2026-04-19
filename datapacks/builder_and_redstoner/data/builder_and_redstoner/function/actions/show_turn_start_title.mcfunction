execute if score #turn_type temp matches 0 run title @a[team=!] subtitle { \
    text: "请在 10 分钟内完成你的作品", \
    color: "aqua", \
    bold: true \
}
execute if score #turn_type temp matches 1 run title @a[team=!] subtitle { \
    text: "请在 20 分钟内完成你的作品", \
    color: "gold", \
    bold: true \
}

$execute \
    if score #turn_type temp matches 0 run \
        title @a[team=!] title [ \
            { \
                text: "主题：", \
                color: green, \
                bold: true \
            }, \
            { \
                type: "nbt", \
                nbt: "data.selected_themes[$(current_selection)].name", \
                storage: "builder_and_redstoner:memory", \
                color: "green", \
                bold: true \
            } \
        ]
$execute \
    if score #turn_type temp matches 1 run \
        title @a[team=!] title [ \
            { \
                text: "问题：", \
                color: red, \
                bold: true \
            }, \
            { \
                type: "nbt", \
                nbt: "data.selected_problems[$(current_selection)].title", \
                storage: "builder_and_redstoner:memory", \
                color: "red", \
                bold: true \
            } \
        ]