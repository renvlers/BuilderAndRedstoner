execute unless score #select_test_cases_counter counter matches -2147483648..2147483647 run scoreboard players set #select_test_cases_counter counter 4

execute store result storage builder_and_redstoner:memory data.current_test_case_index int 1 run random value 0..9
function builder_and_redstoner:actions/get_test_case_by_index with storage builder_and_redstoner:memory data

execute if score #select_test_cases_counter counter matches 1..4 run function builder_and_redstoner:actions/select_test_cases