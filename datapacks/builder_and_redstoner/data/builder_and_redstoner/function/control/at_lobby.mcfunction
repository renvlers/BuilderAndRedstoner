function builder_and_redstoner:actions/prevent_item_drop

# fix player's items
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.0", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.1", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.2", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.3", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.5", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.6", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.7", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.8", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.9", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.10", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.11", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.12", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.13", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.14", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.15", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.16", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.17", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.18", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.19", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.20", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.21", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.22", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.23", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.24", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.25", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.26", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.27", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.28", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.29", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.30", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.31", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.32", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.33", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.34", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "container.35", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/fix_items {place: "weapon.offhand", id:"minecraft:air"}
execute \
    as @a run \
        function builder_and_redstoner:actions/check_ready

# join a team
execute \
    as @a[x=45, y=64, z=-13, dx=0, dy=0, dz=0, team=!red] run \
        function builder_and_redstoner:actions/join_red_team
execute \
    as @a[x=47, y=64, z=-13, dx=0, dy=0, dz=0, team=!orange] run \
        function builder_and_redstoner:actions/join_orange_team
execute \
    as @a[x=49, y=64, z=-13, dx=0, dy=0, dz=0, team=!yellow] run \
        function builder_and_redstoner:actions/join_yellow_team
execute \
    as @a[x=51, y=64, z=-13, dx=0, dy=0, dz=0, team=!green] run \
        function builder_and_redstoner:actions/join_green_team
execute \
    as @a[x=53, y=64, z=-13, dx=0, dy=0, dz=0, team=!blue] run \
        function builder_and_redstoner:actions/join_blue_team
execute \
    as @a[x=55, y=64, z=-13, dx=0, dy=0, dz=0, team=!purple] run \
        function builder_and_redstoner:actions/join_purple_team
