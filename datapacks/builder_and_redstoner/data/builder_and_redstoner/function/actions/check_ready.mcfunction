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

execute \
    if items entity @s player.cursor minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s player.cursor with minecraft:air
execute \
    if items entity @s armor.head minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s armor.head with minecraft:air
execute \
    if items entity @s armor.body minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s armor.body with minecraft:air
execute \
    if items entity @s armor.chest minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s armor.chest with minecraft:air
execute \
    if items entity @s armor.feet minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s armor.feet with minecraft:air
execute \
    if items entity @s armor.legs minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s armor.legs with minecraft:air
execute \
    if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s weapon.offhand with minecraft:air
execute \
    if items entity @s container.0 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.0 with minecraft:air
execute \
    if items entity @s container.1 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.1 with minecraft:air
execute \
    if items entity @s container.2 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.2 with minecraft:air
execute \
    if items entity @s container.3 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.3 with minecraft:air
execute \
    if items entity @s container.5 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.5 with minecraft:air
execute \
    if items entity @s container.6 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.6 with minecraft:air
execute \
    if items entity @s container.7 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.7 with minecraft:air
execute \
    if items entity @s container.8 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.8 with minecraft:air
execute \
    if items entity @s container.9 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.9 with minecraft:air
execute \
    if items entity @s container.10 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.10 with minecraft:air
execute \
    if items entity @s container.11 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.11 with minecraft:air
execute \
    if items entity @s container.12 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.12 with minecraft:air
execute \
    if items entity @s container.13 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.13 with minecraft:air
execute \
    if items entity @s container.14 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.14 with minecraft:air
execute \
    if items entity @s container.15 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.15 with minecraft:air
execute \
    if items entity @s container.16 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.16 with minecraft:air
execute \
    if items entity @s container.17 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.17 with minecraft:air
execute \
    if items entity @s container.18 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.18 with minecraft:air
execute \
    if items entity @s container.19 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.19 with minecraft:air
execute \
    if items entity @s container.20 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.20 with minecraft:air
execute \
    if items entity @s container.21 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.21 with minecraft:air
execute \
    if items entity @s container.22 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.22 with minecraft:air
execute \
    if items entity @s container.23 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.23 with minecraft:air
execute \
    if items entity @s container.24 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.24 with minecraft:air
execute \
    if items entity @s container.25 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.25 with minecraft:air
execute \
    if items entity @s container.26 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.26 with minecraft:air
execute \
    if items entity @s container.27 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.27 with minecraft:air
execute \
    if items entity @s container.28 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.28 with minecraft:air
execute \
    if items entity @s container.29 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.29 with minecraft:air
execute \
    if items entity @s container.30 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.30 with minecraft:air
execute \
    if items entity @s container.31 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.31 with minecraft:air
execute \
    if items entity @s container.32 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.32 with minecraft:air
execute \
    if items entity @s container.33 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.33 with minecraft:air
execute \
    if items entity @s container.34 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.34 with minecraft:air
execute \
    if items entity @s container.35 minecraft:warped_fungus_on_a_stick[custom_data={func:"ready"}] run \
        item replace entity @s container.35 with minecraft:air

execute \
    if items entity @s player.cursor minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s player.cursor with minecraft:air
execute \
    if items entity @s armor.head minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s armor.head with minecraft:air
execute \
    if items entity @s armor.body minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s armor.body with minecraft:air
execute \
    if items entity @s armor.chest minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s armor.chest with minecraft:air
execute \
    if items entity @s armor.feet minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s armor.feet with minecraft:air
execute \
    if items entity @s armor.legs minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s armor.legs with minecraft:air
execute \
    if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s weapon.offhand with minecraft:air
execute \
    if items entity @s container.0 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.0 with minecraft:air
execute \
    if items entity @s container.1 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.1 with minecraft:air
execute \
    if items entity @s container.2 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.2 with minecraft:air
execute \
    if items entity @s container.3 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.3 with minecraft:air
execute \
    if items entity @s container.5 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.5 with minecraft:air
execute \
    if items entity @s container.6 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.6 with minecraft:air
execute \
    if items entity @s container.7 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.7 with minecraft:air
execute \
    if items entity @s container.8 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.8 with minecraft:air
execute \
    if items entity @s container.9 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.9 with minecraft:air
execute \
    if items entity @s container.10 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.10 with minecraft:air
execute \
    if items entity @s container.11 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.11 with minecraft:air
execute \
    if items entity @s container.12 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.12 with minecraft:air
execute \
    if items entity @s container.13 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.13 with minecraft:air
execute \
    if items entity @s container.14 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.14 with minecraft:air
execute \
    if items entity @s container.15 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.15 with minecraft:air
execute \
    if items entity @s container.16 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.16 with minecraft:air
execute \
    if items entity @s container.17 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.17 with minecraft:air
execute \
    if items entity @s container.18 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.18 with minecraft:air
execute \
    if items entity @s container.19 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.19 with minecraft:air
execute \
    if items entity @s container.20 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.20 with minecraft:air
execute \
    if items entity @s container.21 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.21 with minecraft:air
execute \
    if items entity @s container.22 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.22 with minecraft:air
execute \
    if items entity @s container.23 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.23 with minecraft:air
execute \
    if items entity @s container.24 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.24 with minecraft:air
execute \
    if items entity @s container.25 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.25 with minecraft:air
execute \
    if items entity @s container.26 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.26 with minecraft:air
execute \
    if items entity @s container.27 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.27 with minecraft:air
execute \
    if items entity @s container.28 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.28 with minecraft:air
execute \
    if items entity @s container.29 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.29 with minecraft:air
execute \
    if items entity @s container.30 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.30 with minecraft:air
execute \
    if items entity @s container.31 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.31 with minecraft:air
execute \
    if items entity @s container.32 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.32 with minecraft:air
execute \
    if items entity @s container.33 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.33 with minecraft:air
execute \
    if items entity @s container.34 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.34 with minecraft:air
execute \
    if items entity @s container.35 minecraft:warped_fungus_on_a_stick[custom_data={func:"cancel_ready"}] run \
        item replace entity @s container.35 with minecraft:air