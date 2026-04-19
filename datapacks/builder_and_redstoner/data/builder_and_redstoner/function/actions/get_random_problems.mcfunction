execute \
    unless score #prepared_problems temp matches 0..4 run \
        scoreboard players set #prepared_problems temp 0

$execute \
    store result storage builder_and_redstoner:memory data.random_problem_idx int 1 run \
        random value 0..$(max_idx)

function builder_and_redstoner:actions/get_problem_by_idx with storage builder_and_redstoner:memory data

execute \
    if score #prepared_problems temp matches 0..4 run \
        function builder_and_redstoner:actions/get_random_problems with storage builder_and_redstoner:problems