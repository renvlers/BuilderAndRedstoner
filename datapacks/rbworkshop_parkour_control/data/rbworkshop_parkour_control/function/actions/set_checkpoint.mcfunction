$scoreboard players set @s parkour_checkpoint $(checkpoint)
tellraw @s [ \
    { text: "【大厅跑酷】已到达第 ", color: "yellow", bold: true }, \
    { type: "score", score: { name: "@s", objective: "parkour_checkpoint" }, color: "gold", bold: true }, \
    { text: " 个检查点！", color: "yellow", bold: true } \
]
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1