data modify storage builder_and_redstoner:problems problems append value { \
    id: 10, \
    title: "最亮是多亮", \
    description: "有5个漏斗，里面各自有一些物品，如果用比较器分别去检测这些漏斗，输出信号强度最大的一个漏斗所输出的信号强度是多少？", \
    input: "使用 0~4 号输入位，绿宝石块上方各有一个漏斗，每个漏斗里面都可能有若干个物品。", \
    output: "使用 0~15 号输出位，钻石块上方需放置红石灯，最大的信号强度是多少，就点亮多少号红石灯。", \
    tests: [ \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 1, Slot: 0 }, { id: "minecraft:grass_block", count: 1, Slot: 1 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:redstone", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:diamond_pickaxe", count: 1, Slot: 0 }, { id: "minecraft:golden_axe", count: 1, Slot: 1 }]} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }, { id: "minecraft:wooden_axe", count: 1, Slot: 2 }, { id: "minecraft:wooden_pickaxe", count: 1, Slot: 3 }, { id: "minecraft:wooden_hoe", count: 1, Slot: 4 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }, { id: "minecraft:wooden_axe", count: 1, Slot: 2 }, { id: "minecraft:wooden_pickaxe", count: 1, Slot: 3 }, { id: "minecraft:stone", count: 63, Slot: 4 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }, { id: "minecraft:wooden_axe", count: 1, Slot: 2 }, { id: "minecraft:wooden_pickaxe", count: 1, Slot: 3 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }, { id: "minecraft:stone", count: 32, Slot: 2 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:ender_pearl", count: 8, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 16, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }, { id: "minecraft:wooden_axe", count: 1, Slot: 2 }, { id: "minecraft:stone", count: 14, Slot: 3 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:wooden_sword", count: 1, Slot: 1 }, { id: "minecraft:wooden_axe", count: 1, Slot: 2 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 64, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }, { id: "minecraft:stone", count: 12, Slot: 1 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:wooden_shovel", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:dirt", count: 64, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:dirt", count: 32, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:dirt", count: 1, Slot: 0 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 64, Slot: 0 }, { id: "minecraft:stone", count: 64, Slot: 1 }, { id: "minecraft:stone", count: 64, Slot: 2 }, { id: "minecraft:stone", count: 64, Slot: 3 }, { id: "minecraft:stone", count: 64, Slot: 4 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: [{ id: "minecraft:stone", count: 64, Slot: 0 }, { id: "minecraft:stone", count: 64, Slot: 1 }, { id: "minecraft:stone", count: 64, Slot: 2 }, { id: "minecraft:stone", count: 64, Slot: 3 }]} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "minecraft:hopper", block_state: "facing=down", block_entity: { Items: []} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" } \
            ] \
        } \
    ] \
}