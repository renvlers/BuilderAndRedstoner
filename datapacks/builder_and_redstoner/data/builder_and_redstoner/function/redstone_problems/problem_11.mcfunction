data modify storage builder_and_redstoner:problems problems append value { \
    id: 11, \
    title: "请保持距离", \
    description: "假设在由红石块和空气组成的序列中，只有不存在两个相邻的红石块时，这个序列才是合法的，请你判断给定的序列是否合法。", \
    input: "使用 0~17 号输入位，绿宝石块上方可能为红石块或空气。", \
    output: "使用 0 号和 1 号输出位，钻石块上方需放置红石灯，如果序列合法，点亮 1 号红石灯，否则点亮 0 号红石灯。", \
    tests: [ \
        { \
            input: [ \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, { block: "minecraft:air", block_state: "", block_entity: {} }, { block: "minecraft:redstone_block", block_state: "", block_entity: {} } \
            ], \
            output: [ \
                { block: "minecraft:redstone_lamp", block_state: "lit=true", block_entity: {} }, \
                { block: "minecraft:redstone_lamp", block_state: "lit=false", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        } \
    ] \
}