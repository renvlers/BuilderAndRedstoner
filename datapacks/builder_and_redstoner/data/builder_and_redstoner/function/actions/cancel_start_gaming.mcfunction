schedule clear builder_and_redstoner:actions/start_game_timeleft
schedule clear builder_and_redstoner:actions/start_game

tellraw @a[sort=arbitrary] [{ text: "【红建工坊】", color: "#CCFF99", bold: true }, {type: "selector", selector: "@s", bold: true}, {text: " 取消了开始游戏", color: "#CCFF99", bold: true}]

data modify storage builder_and_redstoner:config config.status set value "LOBBY"
scoreboard players reset #start_timeleft temp

title @a[sort=arbitrary] reset