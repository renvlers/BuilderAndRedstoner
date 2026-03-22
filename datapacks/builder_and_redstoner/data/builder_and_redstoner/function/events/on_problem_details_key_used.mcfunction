$kill @n[type=item, nbt={Item:{id: "minecraft:red_stained_glass_pane", components:{"minecraft:custom_data": {problem: $(theme)}}}}]
$kill @n[type=item, nbt={Item:{id: "minecraft:lime_stained_glass_pane", components:{"minecraft:custom_data": {problem: $(theme)}}}}]
scoreboard players reset @s glass_pane_drop

$function builder_and_redstoner:actions/open_redstone_problem_description_dialog with entity @n[tag=memory_entity, type=marker] data.selected_problems[$(theme)]