execute as @a[sort=arbitrary,team=!] run function builder_and_redstoner:actions/update_selected

execute as @a[sort=arbitrary,team=!] if score @s glass_pane_drop matches 1.. run function builder_and_redstoner:events/on_problem_details_key_used with entity @n[predicate=builder_and_redstoner:control/at_selecting/warped_fungus_on_a_stick,type=item] Item.components."minecraft:custom_data"

function builder_and_redstoner:actions/update_selecting_sidebar
function builder_and_redstoner:actions/prevent_item_drop

execute as @e[tag=seat, sort=arbitrary, type=interaction] if data entity @s interaction run function builder_and_redstoner:events/on_seat_right_clicked

execute if score #turn_type temp matches 0 run title @a[team=!, sort=arbitrary] actionbar [ \
    { \
        text: "手持物品右键选择建筑主题", \
        color: "green", \
        bold: true \
    } \
]

execute if score #turn_type temp matches 1 run title @a[team=!, sort=arbitrary] actionbar [ \
    { \
        text: "手持物品右键选择红石问题，丢弃物品以查看问题详情", \
        color: "red", \
        bold: true \
    } \
]

execute as @a[team=, sort=arbitrary] at @s run function builder_and_redstoner:actions/spectate_a_player with entity @s EnderItems[0].components."minecraft:profile"