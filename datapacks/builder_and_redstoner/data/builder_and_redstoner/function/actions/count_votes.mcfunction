execute if score #current_team temp matches 0 as @a[team=!] if entity @s[team=!red] run scoreboard players operation #red vote += @s vote_player
execute if score #current_team temp matches 0 run scoreboard players set #red vote_count 0
execute if score #current_team temp matches 0 as @a[team=!] if entity @s[team=!red] if score @s vote_player matches -2147483648..2147483647 run scoreboard players add #red vote_count 1
execute if score #current_team temp matches 0 if score #red vote_count matches 1.. run scoreboard players operation #red vote /= #red vote_count
execute if score #current_team temp matches 0 unless score #red vote_count matches 1.. run scoreboard players set #red vote 100

execute if score #current_team temp matches 1 as @a[team=!] if entity @s[team=!orange] run scoreboard players operation #orange vote += @s vote_player
execute if score #current_team temp matches 1 run scoreboard players set #orange vote_count 0
execute if score #current_team temp matches 1 as @a[team=!] if entity @s[team=!orange] if score @s vote_player matches -2147483648..2147483647 run scoreboard players add #orange vote_count 1
execute if score #current_team temp matches 1 if score #orange vote_count matches 1.. run scoreboard players operation #orange vote /= #orange vote_count
execute if score #current_team temp matches 1 unless score #orange vote_count matches 1.. run scoreboard players set #orange vote 100

execute if score #current_team temp matches 2 as @a[team=!] if entity @s[team=!yellow] run scoreboard players operation #yellow vote += @s vote_player
execute if score #current_team temp matches 2 run scoreboard players set #yellow vote_count 0
execute if score #current_team temp matches 2 as @a[team=!] if entity @s[team=!yellow] if score @s vote_player matches -2147483648..2147483647 run scoreboard players add #yellow vote_count 1
execute if score #current_team temp matches 2 if score #yellow vote_count matches 1.. run scoreboard players operation #yellow vote /= #yellow vote_count
execute if score #current_team temp matches 2 unless score #yellow vote_count matches 1.. run scoreboard players set #yellow vote 100

execute if score #current_team temp matches 3 as @a[team=!] if entity @s[team=!green] run scoreboard players operation #green vote += @s vote_player
execute if score #current_team temp matches 3 run scoreboard players set #green vote_count 0
execute if score #current_team temp matches 3 as @a[team=!] if entity @s[team=!green] if score @s vote_player matches -2147483648..2147483647 run scoreboard players add #green vote_count 1
execute if score #current_team temp matches 3 if score #green vote_count matches 1.. run scoreboard players operation #green vote /= #green vote_count
execute if score #current_team temp matches 3 unless score #green vote_count matches 1.. run scoreboard players set #green vote 100

execute if score #current_team temp matches 4 as @a[team=!] if entity @s[team=!blue] run scoreboard players operation #blue vote += @s vote_player
execute if score #current_team temp matches 4 run scoreboard players set #blue vote_count 0
execute if score #current_team temp matches 4 as @a[team=!] if entity @s[team=!blue] if score @s vote_player matches -2147483648..2147483647 run scoreboard players add #blue vote_count 1
execute if score #current_team temp matches 4 if score #blue vote_count matches 1.. run scoreboard players operation #blue vote /= #blue vote_count
execute if score #current_team temp matches 4 unless score #blue vote_count matches 1.. run scoreboard players set #blue vote 100

execute if score #current_team temp matches 5 as @a[team=!] if entity @s[team=!purple] run scoreboard players operation #purple vote += @s vote_player
execute if score #current_team temp matches 5 run scoreboard players set #purple vote_count 0
execute if score #current_team temp matches 5 as @a[team=!] if entity @s[team=!purple] if score @s vote_player matches -2147483648..2147483647 run scoreboard players add #purple vote_count 1
execute if score #current_team temp matches 5 if score #purple vote_count matches 1.. run scoreboard players operation #purple vote /= #purple vote_count
execute if score #current_team temp matches 5 unless score #purple vote_count matches 1.. run scoreboard players set #purple vote 100