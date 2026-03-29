data modify storage builder_and_redstoner:problems problems append value { \
    id: 12, \
    title: "方块能被瞬推多远", \
    description: "活塞瞬推的特性是黏性活塞特有的，只有黏性活塞在接收到 0t 信号时可以将方块向前瞬推出去，普通活塞即使接收到 0t 信号也是不能将方块瞬推出去的。假设给定 6 个方向向上的活塞，全部垂直堆叠在一起，且最上方只有 1 个可推动方块，判断这个方块最多能被无延时向上瞬推多少格。", \
    input: "使用 6~11 号输入位，绿宝石块上方可能为黏性活塞或普通活塞，题目保证所有活塞的方向都是向上的，你需要假设这些活塞全部垂直堆叠在一起且上方有一个可推动的普通方块。", \
    output: "使用 0~6 号输出位，钻石块上方需放置红石灯，目标方块最多能被无延时向上瞬推几格，就点亮几号输出位上的红石灯。", \
    tests: [ \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:piston", block_state: "facing=up", block_entity: {} }, \
                { block: "minecraft:sticky_piston", block_state: "facing=up", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" } \
            ] \
        } \
    ] \
}