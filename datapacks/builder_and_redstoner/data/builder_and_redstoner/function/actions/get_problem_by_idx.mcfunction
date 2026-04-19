$execute \
    unless data storage builder_and_redstoner:memory {data: {selected_problems: [{id: $(random_problem_idx)}]}} run \
        scoreboard players add #prepared_problems temp 1

$execute \
    unless data storage builder_and_redstoner:memory {data: {selected_problems: [{id: $(random_problem_idx)}]}} run \
        data modify storage builder_and_redstoner:memory data.selected_problems append from storage builder_and_redstoner:problems problems[$(random_problem_idx)]