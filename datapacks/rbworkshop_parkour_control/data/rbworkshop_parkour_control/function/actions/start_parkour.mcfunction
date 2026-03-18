tag @s add parkour_participant

scoreboard players set @s parkour_timer 0
scoreboard players set @s parkour_checkpoint 0

tellraw @s [ \
    { text: "【大厅跑酷】欢迎来到大厅跑酷！", color: "yellow", bold: true }, \
]