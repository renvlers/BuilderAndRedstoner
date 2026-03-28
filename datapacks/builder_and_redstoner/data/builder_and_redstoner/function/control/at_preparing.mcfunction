function builder_and_redstoner:actions/prevent_item_drop
function builder_and_redstoner:actions/update_lobby_sidebar
execute as @a[sort=arbitrary] run function builder_and_redstoner:actions/provide_preparing_items

execute as @e[tag=seat, sort=arbitrary, type=interaction] if data entity @s interaction run function builder_and_redstoner:events/on_seat_right_clicked

execute as @a if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={item_type: "cancel_start_gaming"}] run function builder_and_redstoner:actions/cancel_start_gaming
execute as @a if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={item_type: "cancel_start_gaming"}] run scoreboard players reset @s right_check

execute as @a[team=, sort=arbitrary] run title @s actionbar { text: "【红建工坊】你尚未加入队伍，即将进入观战模式", color: "dark_gray", bold: true }