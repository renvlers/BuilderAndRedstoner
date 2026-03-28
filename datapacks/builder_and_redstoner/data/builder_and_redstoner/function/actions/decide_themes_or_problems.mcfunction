# 1. 清理旧的计算实体（防止重复运行导致的bug）
kill @e[type=marker, tag=vote_calculator]

# 2. 生成5个标记实体，分别代表 ID 0-4
# 我们直接在生成时赋予它们对应的计分板ID，便于后续通过分数筛选
summon marker ~ ~ ~ {Tags: ["vote_calculator", "opt_0"], data: {id: 0}}
summon marker ~ ~ ~ {Tags: ["vote_calculator", "opt_1"], data: {id: 1}}
summon marker ~ ~ ~ {Tags: ["vote_calculator", "opt_2"], data: {id: 2}}
summon marker ~ ~ ~ {Tags: ["vote_calculator", "opt_3"], data: {id: 3}}
summon marker ~ ~ ~ {Tags: ["vote_calculator", "opt_4"], data: {id: 4}}

# 3. 初始化实体的分数
scoreboard players set @n[tag=opt_0, type=marker] temp 0
scoreboard players set @n[tag=opt_1, type=marker] temp 0
scoreboard players set @n[tag=opt_2, type=marker] temp 0
scoreboard players set @n[tag=opt_3, type=marker] temp 0
scoreboard players set @n[tag=opt_4, type=marker] temp 0

# 4. 统计票数
# 遍历所有在线玩家，根据他们的 selection 分数，给对应的计算实体增加 votes 分数
execute as @a[team=!, scores={selection=0}] run scoreboard players add @n[tag=opt_0, type=marker] temp 1
execute as @a[team=!, scores={selection=1}] run scoreboard players add @n[tag=opt_1, type=marker] temp 1
execute as @a[team=!, scores={selection=2}] run scoreboard players add @n[tag=opt_2, type=marker] temp 1
execute as @a[team=!, scores={selection=3}] run scoreboard players add @n[tag=opt_3, type=marker] temp 1
execute as @a[team=!, scores={selection=4}] run scoreboard players add @n[tag=opt_4, type=marker] temp 1

# 5. 找出最高票数
# 先将 #max 初始化为 -1
scoreboard players set #max_theme_or_problem temp -1
# 利用 operation > (取最大值) 运算，遍历所有计算实体，把最高分存入 #max
execute as @e[tag=vote_calculator, type=marker] run scoreboard players operation #max_theme_or_problem temp > @s temp

# 6. 选出最终赢家（包含平局随机处理）
# 逻辑：在所有“票数等于最高票”的实体中，随机选取1个(limit=1, sort=random)
# 将选中的实体的 ID (selection分数) 赋值给最终结果 current_selection
execute as @e[tag=vote_calculator, type=marker] if score @s temp = #max_theme_or_problem temp run tag @s add winner_candidate
execute \
    as @e[tag=winner_candidate, limit=1, sort=random] run \
        data modify entity @n[tag=memory_entity, type=marker] data.current_selection set from entity @s data.id

# 7. 收尾清理
kill @e[tag=vote_calculator]