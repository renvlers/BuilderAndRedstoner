execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=red] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        function builder_and_redstoner:actions/set_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=orange] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        function builder_and_redstoner:actions/set_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=yellow] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        function builder_and_redstoner:actions/set_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=green] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        function builder_and_redstoner:actions/set_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=blue] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        function builder_and_redstoner:actions/set_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=purple] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        function builder_and_redstoner:actions/set_ready

execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=red] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "cancel_ready"} \
    ] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=orange] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "cancel_ready"} \
    ] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=yellow] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "cancel_ready"} \
    ] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=green] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "cancel_ready"} \
    ] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=blue] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "cancel_ready"} \
    ] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=purple] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "cancel_ready"} \
    ] run \
        function builder_and_redstoner:actions/cancel_ready

execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} \
    as @s[team=!red, team=!orange, team=!yellow, team=!green, team=!blue, team=!purple] \
    if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[ \
        custom_data = {func: "ready"} \
    ] run \
        title @s actionbar { \
            text: "【红建工坊】你必须先加入队伍才能准备", \
            color: "#CCFF99", \
            bold: true \
        }
