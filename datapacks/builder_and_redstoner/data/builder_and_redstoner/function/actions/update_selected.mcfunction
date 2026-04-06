execute unless items entity @s player.cursor air run item replace entity @s player.cursor with air

execute unless items entity @s container.0 air run item replace entity @s container.0 with air
execute unless items entity @s container.1 air run item replace entity @s container.1 with air
execute unless items entity @s container.7 air run item replace entity @s container.7 with air
execute unless items entity @s container.8 air run item replace entity @s container.8 with air
execute unless items entity @s container.9 air run item replace entity @s container.9 with air
execute unless items entity @s container.10 air run item replace entity @s container.10 with air
execute unless items entity @s container.11 air run item replace entity @s container.11 with air
execute unless items entity @s container.12 air run item replace entity @s container.12 with air
execute unless items entity @s container.13 air run item replace entity @s container.13 with air
execute unless items entity @s container.14 air run item replace entity @s container.14 with air
execute unless items entity @s container.15 air run item replace entity @s container.15 with air
execute unless items entity @s container.16 air run item replace entity @s container.16 with air
execute unless items entity @s container.17 air run item replace entity @s container.17 with air
execute unless items entity @s container.18 air run item replace entity @s container.18 with air
execute unless items entity @s container.19 air run item replace entity @s container.19 with air
execute unless items entity @s container.20 air run item replace entity @s container.20 with air
execute unless items entity @s container.21 air run item replace entity @s container.21 with air
execute unless items entity @s container.22 air run item replace entity @s container.22 with air
execute unless items entity @s container.23 air run item replace entity @s container.23 with air
execute unless items entity @s container.24 air run item replace entity @s container.24 with air
execute unless items entity @s container.25 air run item replace entity @s container.25 with air
execute unless items entity @s container.26 air run item replace entity @s container.26 with air
execute unless items entity @s container.27 air run item replace entity @s container.27 with air
execute unless items entity @s container.28 air run item replace entity @s container.28 with air
execute unless items entity @s container.29 air run item replace entity @s container.29 with air
execute unless items entity @s container.30 air run item replace entity @s container.30 with air
execute unless items entity @s container.31 air run item replace entity @s container.31 with air
execute unless items entity @s container.32 air run item replace entity @s container.32 with air
execute unless items entity @s container.33 air run item replace entity @s container.33 with air
execute unless items entity @s container.34 air run item replace entity @s container.34 with air
execute unless items entity @s container.35 air run item replace entity @s container.35 with air

execute unless items entity @s weapon.offhand air run item replace entity @s weapon.offhand with air

execute unless items entity @s armor.head air run item replace entity @s armor.head with air
execute unless items entity @s armor.chest air run item replace entity @s armor.chest with air
execute unless items entity @s armor.legs air run item replace entity @s armor.legs with air
execute unless items entity @s armor.feet air run item replace entity @s armor.feet with air

execute unless items entity @s player.crafting.0 air run item replace entity @s player.crafting.0 with air
execute unless items entity @s player.crafting.1 air run item replace entity @s player.crafting.1 with air
execute unless items entity @s player.crafting.2 air run item replace entity @s player.crafting.2 with air
execute unless items entity @s player.crafting.3 air run item replace entity @s player.crafting.3 with air

# update player's selection
execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 0}, item_model=red_stained_glass_pane] run scoreboard players set @s selection 0
execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 0}, item_model=red_stained_glass_pane] run scoreboard players reset @s right_check

execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 1}, item_model=red_stained_glass_pane] run scoreboard players set @s selection 1
execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 1}, item_model=red_stained_glass_pane] run scoreboard players reset @s right_check

execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 2}, item_model=red_stained_glass_pane] run scoreboard players set @s selection 2
execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 2}, item_model=red_stained_glass_pane] run scoreboard players reset @s right_check

execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 3}, item_model=red_stained_glass_pane] run scoreboard players set @s selection 3
execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 3}, item_model=red_stained_glass_pane] run scoreboard players reset @s right_check

execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 4}, item_model=red_stained_glass_pane] run scoreboard players set @s selection 4
execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={theme: 4}, item_model=red_stained_glass_pane] run scoreboard players reset @s right_check

execute if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[item_model=lime_stained_glass_pane] run scoreboard players reset @s selection

# update UI
function builder_and_redstoner:actions/set_selecting_theme_or_problem_item