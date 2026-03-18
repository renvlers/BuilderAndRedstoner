tag @s add parkour_winner

tellraw @a [ \
    { text: "【大厅跑酷】恭喜 ", color: "yellow", bold: true }, \
    { type: "selector", selector: "@s", color: "gold", bold: true }, \
    { text: " 完成了大厅跑酷！用时 ", color: "yellow", bold: true }, \
    { type: "score", score: { name: "@s", objective: "parkour_timer_hours" }, color: "gold", bold: true }, \
    { text: " 小时 ", color: "yellow", bold: true }, \
    { type: "score", score: { name: "@s", objective: "parkour_timer_minutes" }, color: "gold", bold: true }, \
    { text: " 分钟 ", color: "yellow", bold: true }, \
    { type: "score", score: { name: "@s", objective: "parkour_timer_seconds" }, color: "gold", bold: true }, \
    { text: " 秒", color: "yellow", bold: true } \
]