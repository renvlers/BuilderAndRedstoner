execute unless score #redstone_problems_loader_counter counter matches -2147483648..2147483647 run scoreboard players set #redstone_problems_loader_counter counter 0

$function builder_and_redstoner:redstone_problems/problem_$(redstone_problems_loader_counter)

scoreboard players add #redstone_problems_loader_counter counter 1
execute store result storage builder_and_redstoner:memory data.redstone_problems_loader_counter int 1 run scoreboard players get #redstone_problems_loader_counter counter

execute if score #redstone_problems_loader_counter counter <= #redstone_problems_max_idx temp run function builder_and_redstoner:redstone_problems/utils/redstone_problems_loader with storage builder_and_redstoner:memory data