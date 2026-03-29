playsound block.note_block.xylophone master @a[sort=arbitrary,team=!] ~ ~ ~ 10000000 1
execute as @a[sort=arbitrary,team=!] at @s run function builder_and_redstoner:actions/create_click_detectors with entity @s
execute as @a[sort=arbitrary,team=!] run function builder_and_redstoner:actions/set_effects
execute if score #turn_type temp matches 0 run scoreboard players reset @a[sort=arbitrary,team=!] menu_status
execute if score #turn_type temp matches 0 run scoreboard players reset @a[sort=arbitrary,team=!] menu_control
clear @a[sort=arbitrary,team=!]

execute as @a[sort=arbitrary,team=!] run attribute @s minecraft:attack_damage base set 0

title @a[sort=arbitrary,team=!] reset
title @a[sort=arbitrary,team=!] actionbar ""
execute if score #turn_type temp matches 0 run title @a[sort=arbitrary,team=!] subtitle { \
    text: "即将进入投票阶段", \
    color: "aqua", \
    bold: true \
}
execute if score #turn_type temp matches 1 run title @a[team=!] subtitle { \
    text: "即将进入测试阶段", \
    color: "aqua", \
    bold: true \
}

title @a[sort=arbitrary,team=!] title { \
    text: "本轮比赛结束", \
    color: "light_purple", \
    bold: true \
}

function builder_and_redstoner:actions/leave_endturn

scoreboard players reset @a right_check

execute \
    unless data storage builder_and_redstoner:config {config: {status: "ENDTURN"}} run \
        data modify storage builder_and_redstoner:config config.status set value "ENDTURN"