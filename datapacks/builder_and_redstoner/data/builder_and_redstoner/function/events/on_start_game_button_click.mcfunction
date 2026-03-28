scoreboard players set #can_start temp 1

scoreboard players set #active player_count 0
execute as @a[team=!] run scoreboard players add #active player_count 1

execute \
    unless score #ready player_count = #active player_count run \
        scoreboard players set #can_start temp 0

execute \
    unless score #ready player_count = #active player_count run \
        title @s actionbar { \
            text: "【红建工坊】有玩家已加入队伍但尚未准备，请等待所有已加入队伍的玩家准备后开始游戏", \
            color: "#FF6666", \
            bold: true \
        }

execute \
    if score #active_teams temp matches ..1 run \
        scoreboard players set #can_start temp 0

execute \
    if score #ready player_count = #active player_count \
    if score #active_teams temp matches ..1 run \
        title @s actionbar { \
            text: "【红建工坊】需要至少两个队伍才能开始游戏，请让玩家加入不同队伍", \
            color: "#FF6666", \
            bold: true \
        }

execute \
    if data storage builder_and_redstoner:config {config: {building_turns: 0, redstone_turns: 0}} run \
        scoreboard players set #can_start temp 0

execute \
    if data storage builder_and_redstoner:config {config: {building_turns: 0, redstone_turns: 0}} run \
        title @s actionbar { \
            text: "【红建工坊】轮数必须大于零才能开始游戏，请设置有效的轮数", \
            color: "#FF6666", \
            bold: true \
        }

execute \
    if score #can_start temp matches 1 run \
        function builder_and_redstoner:control/to_preparing
