function builder_and_redstoner:actions/prevent_item_drop
function builder_and_redstoner:actions/protect_gaming_area
execute if score #turn_type temp matches 0 as @a run function builder_and_redstoner:actions/close_menus with entity @s EnderItems[0].components."minecraft:profile"
execute as @a at @s run function builder_and_redstoner:actions/teleport_click_detectors with entity @s EnderItems[0].components."minecraft:profile"
clear @a

function builder_and_redstoner:actions/update_endturn_sidebar with entity @n[tag=memory_entity, type=marker] data

# teleport players out of area
execute as @a[team=red] at @s unless entity @s[x=10206, y=61, z=-21, dx=38 , dy=37 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=red] at @s unless entity @s[x=10206, y=61, z=-21, dx=38 , dy=37 , dz=38] in overworld run tp @s 10225 75 -2 90 15
execute as @a[team=orange] at @s unless entity @s[x=10253, y=61, z=-21, dx=38 , dy=37 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=orange] at @s unless entity @s[x=10253, y=61, z=-21, dx=38 , dy=37 , dz=38] in overworld run tp @s 10272 75 -2 90 15
execute as @a[team=yellow] at @s unless entity @s[x=10300, y=61, z=-21, dx=38 , dy=37 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=yellow] at @s unless entity @s[x=10300, y=61, z=-21, dx=38 , dy=37 , dz=38] in overworld run tp @s 10319 75 -2 90 15
execute as @a[team=green] at @s unless entity @s[x=10206, y=61, z=26, dx=38 , dy=37 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=green] at @s unless entity @s[x=10206, y=61, z=26, dx=38 , dy=37 , dz=38] in overworld run tp @s 10225 75 45 90 15
execute as @a[team=blue] at @s unless entity @s[x=10253, y=61, z=26, dx=38 , dy=37 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=blue] at @s unless entity @s[x=10253, y=61, z=26, dx=38 , dy=37 , dz=38] in overworld run tp @s 10272 75 45 90 15
execute as @a[team=purple] at @s unless entity @s[x=10300, y=61, z=26, dx=38 , dy=37 , dz=38] run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=purple] at @s unless entity @s[x=10300, y=61, z=26, dx=38 , dy=37 , dz=38] in overworld run tp @s 10319 75 45 90 15

# teleport players not in overworld
execute as @a[team=red] at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=red] at @s unless dimension overworld in overworld run tp @s 10225 75 -2 90 15
execute as @a[team=orange] at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=orange] at @s unless dimension overworld in overworld run tp @s 10272 75 -2 90 15
execute as @a[team=yellow] at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=yellow] at @s unless dimension overworld in overworld run tp @s 10319 75 -2 90 15
execute as @a[team=green] at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=green] at @s unless dimension overworld in overworld run tp @s 10225 75 45 90 15
execute as @a[team=blue] at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=blue] at @s unless dimension overworld in overworld run tp @s 10272 75 45 90 15
execute as @a[team=purple] at @s unless dimension overworld run title @s actionbar { \
    text: "【红建工坊】请不要试图离开游戏区域", \
    color: "red", \
    bold: true \
}
execute as @a[team=purple] at @s unless dimension overworld in overworld run tp @s 10319 75 45 90 15

execute as @a[team=, sort=arbitrary] at @s run function builder_and_redstoner:actions/spectate_a_player with entity @s EnderItems[0].components."minecraft:profile"