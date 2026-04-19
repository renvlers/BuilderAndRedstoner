function builder_and_redstoner:actions/prevent_item_drop
function builder_and_redstoner:actions/protect_gaming_area
execute as @a[sort=arbitrary] at @s run function builder_and_redstoner:actions/teleport_click_detectors with entity @s EnderItems[0].components."minecraft:profile"

execute if score #current_team temp matches 0 run function builder_and_redstoner:actions/show_testing_actionbar { \
    team_name: "红队", \
    team_color: "red" \
}
execute if score #current_team temp matches 1 run function builder_and_redstoner:actions/show_testing_actionbar { \
    team_name: "橙队", \
    team_color: "gold" \
}
execute if score #current_team temp matches 2 run function builder_and_redstoner:actions/show_testing_actionbar { \
    team_name: "黄队", \
    team_color: "yellow" \
}
execute if score #current_team temp matches 3 run function builder_and_redstoner:actions/show_testing_actionbar { \
    team_name: "绿队", \
    team_color: "green" \
}
execute if score #current_team temp matches 4 run function builder_and_redstoner:actions/show_testing_actionbar { \
    team_name: "蓝队", \
    team_color: "blue" \
}
execute if score #current_team temp matches 5 run function builder_and_redstoner:actions/show_testing_actionbar { \
    team_name: "紫队", \
    team_color: "dark_purple" \
}

function builder_and_redstoner:actions/update_testing_sidebar with storage builder_and_redstoner:memory data

execute as @a[team=, sort=arbitrary] at @s run function builder_and_redstoner:actions/spectate_a_player with entity @s EnderItems[0].components."minecraft:profile"

# teleport players out of area
execute as @a[team=!] if score #current_team temp matches 0 at @s unless entity @s[x=10206, y=61, z=-21, dx=38 , dy=35 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 0 at @s unless entity @s[x=10206, y=61, z=-21, dx=38 , dy=35 , dz=38] in overworld run tp @s 10225 75 -2 90 15
execute as @a[team=!] if score #current_team temp matches 1 at @s unless entity @s[x=10253, y=61, z=-21, dx=38 , dy=35 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 1 at @s unless entity @s[x=10253, y=61, z=-21, dx=38 , dy=35 , dz=38] in overworld run tp @s 10272 75 -2 90 15
execute as @a[team=!] if score #current_team temp matches 2 at @s unless entity @s[x=10300, y=61, z=-21, dx=38 , dy=35 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 2 at @s unless entity @s[x=10300, y=61, z=-21, dx=38 , dy=35 , dz=38] in overworld run tp @s 10319 75 -2 90 15
execute as @a[team=!] if score #current_team temp matches 3 at @s unless entity @s[x=10206, y=61, z=26, dx=38 , dy=35 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 3 at @s unless entity @s[x=10206, y=61, z=26, dx=38 , dy=35 , dz=38] in overworld run tp @s 10225 75 45 90 15
execute as @a[team=!] if score #current_team temp matches 4 at @s unless entity @s[x=10253, y=61, z=26, dx=38 , dy=35 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 4 at @s unless entity @s[x=10253, y=61, z=26, dx=38 , dy=35 , dz=38] in overworld run tp @s 10272 75 45 90 15
execute as @a[team=!] if score #current_team temp matches 5 at @s unless entity @s[x=10300, y=61, z=26, dx=38 , dy=35 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 5 at @s unless entity @s[x=10300, y=61, z=26, dx=38 , dy=35 , dz=38] in overworld run tp @s 10319 75 45 90 15

# teleport players not in overworld
execute as @a[team=!] if score #current_team temp matches 0 at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 0 at @s unless dimension overworld in overworld run tp @s 10225 75 -2 90 15
execute as @a[team=!] if score #current_team temp matches 1 at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 1 at @s unless dimension overworld in overworld run tp @s 10272 75 -2 90 15
execute as @a[team=!] if score #current_team temp matches 2 at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 2 at @s unless dimension overworld in overworld run tp @s 10319 75 -2 90 15
execute as @a[team=!] if score #current_team temp matches 3 at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 3 at @s unless dimension overworld in overworld run tp @s 10225 75 45 90 15
execute as @a[team=!] if score #current_team temp matches 4 at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 4 at @s unless dimension overworld in overworld run tp @s 10272 75 45 90 15
execute as @a[team=!] if score #current_team temp matches 5 at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=!] if score #current_team temp matches 5 at @s unless dimension overworld in overworld run tp @s 10319 75 45 90 15