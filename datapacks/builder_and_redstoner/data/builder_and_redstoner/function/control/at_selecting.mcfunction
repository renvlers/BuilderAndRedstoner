function builder_and_redstoner:actions/prevent_item_drop

execute \
    as @a \
    if score #turn_type temp matches 0 run \
        function builder_and_redstoner:actions/update_selecting_theme
execute \
    as @a \
    if score #turn_type temp matches 1 run \
        function builder_and_redstoner:actions/update_selecting_problem