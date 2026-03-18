tag @s remove parkour_participant
tag @s remove parkour_winner

scoreboard players reset @s parkour_timer
scoreboard players reset @s parkour_checkpoint

title @s actionbar ""

tellraw @s [ \
    { text: "【大厅跑酷】你已离开大厅跑酷！", color: "yellow", bold: true }, \
]