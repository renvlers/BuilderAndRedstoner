$kill @n[type=item, nbt={Item:{id: "minecraft:red_stained_glass_pane", components:{"minecraft:custom_data": {problem: $(theme)}}}}]
$kill @n[type=item, nbt={Item:{id: "minecraft:lime_stained_glass_pane", components:{"minecraft:custom_data": {problem: $(theme)}}}}]
scoreboard players reset @s glass_pane_drop

$function builder_and_redstoner:actions/open_redstone_problem_description_dialog with storage builder_and_redstoner:memory data.selected_problems[$(theme)]