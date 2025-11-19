# count ready players
execute \
    store result score #ready player_count run \
        execute if entity @a[scores={ready=1}]

# count active teams
execute \
    store result score #red_team_count player_count run \
        team list red
execute \
    store result score #orange_team_count player_count run \
        team list orange
execute \
    store result score #yellow_team_count player_count run \
        team list yellow
execute \
    store result score #green_team_count player_count run \
        team list green
execute \
    store result score #blue_team_count player_count run \
        team list blue
execute \
    store result score #purple_team_count player_count run \
        team list purple
scoreboard players set #active_teams temp 0
execute \
    if score #red_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #orange_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #yellow_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #green_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #blue_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #purple_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1

# set lobby sidebar
scoreboard players display name *label_you_are_at_lobby lobby_sidebar [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]
scoreboard players display name *label_you_are_at_lobby lobby_sidebar_red [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]
scoreboard players display name *label_you_are_at_lobby lobby_sidebar_orange [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]
scoreboard players display name *label_you_are_at_lobby lobby_sidebar_yellow [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]
scoreboard players display name *label_you_are_at_lobby lobby_sidebar_green [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]
scoreboard players display name *label_you_are_at_lobby lobby_sidebar_blue [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]
scoreboard players display name *label_you_are_at_lobby lobby_sidebar_purple [\ 
    { \
        text: "我的位置：", \
        color: "#35ECE2", \
        bold: true \
    }, \
    { \
        text: "游戏大厅", \
        color: "#CCFF99", \
        bold: true \
    } \
]

scoreboard players display name *label_blank0 lobby_sidebar ""
scoreboard players display name *label_blank0 lobby_sidebar_red ""
scoreboard players display name *label_blank0 lobby_sidebar_orange ""
scoreboard players display name *label_blank0 lobby_sidebar_yellow ""
scoreboard players display name *label_blank0 lobby_sidebar_green ""
scoreboard players display name *label_blank0 lobby_sidebar_blue ""
scoreboard players display name *label_blank0 lobby_sidebar_purple ""

scoreboard players display name *label_building_turns lobby_sidebar [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_building_turns lobby_sidebar_red [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_building_turns lobby_sidebar_orange [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_building_turns lobby_sidebar_yellow [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_building_turns lobby_sidebar_green [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_building_turns lobby_sidebar_blue [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_building_turns lobby_sidebar_purple [ \
    { \
        text: "建筑轮数：", \
        color: "#237EFF", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=building_turns_text]", \
        nbt: "text", \
    } \
]

scoreboard players display name *label_redstone_turns lobby_sidebar [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_redstone_turns lobby_sidebar_red [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_redstone_turns lobby_sidebar_orange [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_redstone_turns lobby_sidebar_yellow [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_redstone_turns lobby_sidebar_green [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_redstone_turns lobby_sidebar_blue [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]
scoreboard players display name *label_redstone_turns lobby_sidebar_purple [ \
    { \
        text: "红石轮数：", \
        color: "#FF5733", \
        bold: true \
    }, \
    { \
        type: "nbt", \
        interpret: true, \
        entity: "@n[tag=redstone_turns_text]", \
        nbt: "text", \
    } \
]

scoreboard players display name *label_blank1 lobby_sidebar ""
scoreboard players display name *label_blank1 lobby_sidebar_red ""
scoreboard players display name *label_blank1 lobby_sidebar_orange ""
scoreboard players display name *label_blank1 lobby_sidebar_yellow ""
scoreboard players display name *label_blank1 lobby_sidebar_green ""
scoreboard players display name *label_blank1 lobby_sidebar_blue ""
scoreboard players display name *label_blank1 lobby_sidebar_purple ""

scoreboard players display name *label_online_players lobby_sidebar [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_online_players lobby_sidebar_red [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_online_players lobby_sidebar_orange [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_online_players lobby_sidebar_yellow [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_online_players lobby_sidebar_green [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_online_players lobby_sidebar_blue [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_online_players lobby_sidebar_purple [ \
    { \
        text: "在线玩家：", \
        color: "#FFFF55", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#online", \
            objective: "player_count" \
        } \
    } \
]

scoreboard players display name *label_ready_players lobby_sidebar [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_ready_players lobby_sidebar_red [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_ready_players lobby_sidebar_orange [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_ready_players lobby_sidebar_yellow [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_ready_players lobby_sidebar_green [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_ready_players lobby_sidebar_blue [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]
scoreboard players display name *label_ready_players lobby_sidebar_purple [ \
    { \
        text: "准备玩家：", \
        color: "#55AA22", \
        bold: true \
    }, \
    { \
        type: "score", \
        score: { \
            name: "#ready", \
            objective: "player_count" \
        } \
    } \
]

scoreboard players display name *label_blank2 lobby_sidebar ""
scoreboard players display name *label_blank2 lobby_sidebar_red ""
scoreboard players display name *label_blank2 lobby_sidebar_orange ""
scoreboard players display name *label_blank2 lobby_sidebar_yellow ""
scoreboard players display name *label_blank2 lobby_sidebar_green ""
scoreboard players display name *label_blank2 lobby_sidebar_blue ""
scoreboard players display name *label_blank2 lobby_sidebar_purple ""

scoreboard players display name *label_my_team lobby_sidebar [ \
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
scoreboard players display name *label_my_team lobby_sidebar_red [ \
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
scoreboard players display name *label_my_team lobby_sidebar_orange [ \
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
scoreboard players display name *label_my_team lobby_sidebar_yellow [ \
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
scoreboard players display name *label_my_team lobby_sidebar_green [ \
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
scoreboard players display name *label_my_team lobby_sidebar_blue [ \
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
scoreboard players display name *label_my_team lobby_sidebar_purple [ \
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

scoreboard players display name *label_active_teams lobby_sidebar [ \
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
        } \
    } \
]
scoreboard players display name *label_active_teams lobby_sidebar_red [ \
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
        } \
    } \
]
scoreboard players display name *label_active_teams lobby_sidebar_orange [ \
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
        } \
    } \
]
scoreboard players display name *label_active_teams lobby_sidebar_yellow [ \
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
        } \
    } \
]
scoreboard players display name *label_active_teams lobby_sidebar_green [ \
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
        } \
    } \
]
scoreboard players display name *label_active_teams lobby_sidebar_blue [ \
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
        } \
    } \
]
scoreboard players display name *label_active_teams lobby_sidebar_purple [ \
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
        } \
    } \
]

# prevent item drop
function builder_and_redstoner:actions/prevent_item_drop

# check ready status
execute \
    as @a run \
        function builder_and_redstoner:actions/check_ready
execute \
    as @a[team=!red, team=!orange, team=!yellow, team=!green, team=!blue, team=!purple] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    as @a \
    if score @s right_check matches 1.. run \
        function builder_and_redstoner:events/on_rightclick_ready
execute \
    as @a \
    if score @s right_check matches 1.. run \
        scoreboard players reset @s right_check

# join a team
execute \
    as @a[x=45, y=64, z=-13, dx=0, dy=0, dz=0, team=!red] run \
        function builder_and_redstoner:actions/join_red_team
execute \
    as @a[x=47, y=64, z=-13, dx=0, dy=0, dz=0, team=!orange] run \
        function builder_and_redstoner:actions/join_orange_team
execute \
    as @a[x=49, y=64, z=-13, dx=0, dy=0, dz=0, team=!yellow] run \
        function builder_and_redstoner:actions/join_yellow_team
execute \
    as @a[x=51, y=64, z=-13, dx=0, dy=0, dz=0, team=!green] run \
        function builder_and_redstoner:actions/join_green_team
execute \
    as @a[x=53, y=64, z=-13, dx=0, dy=0, dz=0, team=!blue] run \
        function builder_and_redstoner:actions/join_blue_team
execute \
    as @a[x=55, y=64, z=-13, dx=0, dy=0, dz=0, team=!purple] run \
        function builder_and_redstoner:actions/join_purple_team

# detect menu button clicks
execute \
    as @e[tag=building_turns_button, limit=1, sort=nearest] \
    if data entity @s interaction \
    on target run \
        function builder_and_redstoner:events/on_building_turns_button_click
execute \
    as @e[tag=building_turns_button, limit=1, sort=nearest] \
    if data entity @s interaction \
    on target run \
        data remove entity @e[tag=building_turns_button, limit=1, sort=nearest] interaction

execute \
    as @e[tag=redstone_turns_button, limit=1, sort=nearest] \
    if data entity @s interaction \
    on target run \
        function builder_and_redstoner:events/on_redstone_turns_button_click
execute \
    as @e[tag=redstone_turns_button, limit=1, sort=nearest] \
    if data entity @s interaction \
    on target run \
        data remove entity @e[tag=redstone_turns_button, limit=1, sort=nearest] interaction

execute \
    as @e[tag=start_game_button, limit=1, sort=nearest] \
    if data entity @s interaction \
    on target run \
        function builder_and_redstoner:events/on_start_game_button_click
execute \
    as @e[tag=start_game_button, limit=1, sort=nearest] \
    if data entity @s interaction \
    on target run \
        data remove entity @e[tag=start_game_button, limit=1, sort=nearest] interaction