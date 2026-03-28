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

function builder_and_redstoner:actions/update_testing_sidebar with entity @n[tag=memory_entity, type=marker] data

execute as @a[team=, sort=arbitrary] at @s run function builder_and_redstoner:actions/spectate_a_player with entity @s EnderItems[0].components."minecraft:profile"