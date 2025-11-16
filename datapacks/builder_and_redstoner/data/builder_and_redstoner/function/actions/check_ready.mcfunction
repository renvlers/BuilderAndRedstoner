execute \
    if score @s ready matches 1.. run \
        item replace entity @s container.4 with minecraft:warped_fungus_on_a_stick[ \
            item_name = { \
                text: "【已准备】右键取消准备", \
                color: green, \
                bold: true \
            }, \
            item_model = "minecraft:lime_concrete", \
            custom_data = {func: "cancel_ready"} \
        ]

execute \
    unless score @s ready matches 1.. run \
        item replace entity @s container.4 with minecraft:warped_fungus_on_a_stick[ \
            item_name = { \
                text: "【未准备】右键准备", \
                color: red, \
                bold: true \
            }, \
            item_model = "minecraft:red_concrete", \
            custom_data = {func: "ready"} \
        ]