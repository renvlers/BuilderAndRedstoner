scoreboard objectives add parkour_platform_control dummy
scoreboard players reset * parkour_platform_control
scoreboard objectives add parkour_checkpoint dummy
scoreboard players reset * parkour_checkpoint
scoreboard objectives add parkour_timer dummy
scoreboard players reset * parkour_timer
scoreboard objectives add parkour_timer_seconds dummy
scoreboard players reset * parkour_timer_seconds
scoreboard objectives add parkour_timer_minutes dummy
scoreboard players reset * parkour_timer_minutes
scoreboard objectives add parkour_timer_hours dummy
scoreboard players reset * parkour_timer_hours

scoreboard players set #base parkour_timer_hours 60
scoreboard players set #base parkour_timer_minutes 60
scoreboard players set #base parkour_timer_seconds 20


schedule clear rbworkshop_parkour_control:actions/reset_platform_0
schedule clear rbworkshop_parkour_control:actions/unlock_button

execute as @e[tag=parkour_platform_display_0, sort=arbitrary, type=block_display] run data modify entity @s teleport_duration set value 0

tp @n[tag=parkour_platform_display_0, tag=pos_0, sort=arbitrary, type=block_display] 168.5 114 -57.5
tp @n[tag=parkour_platform_display_0, tag=pos_1, sort=arbitrary, type=block_display] 169.5 114 -57.5
tp @n[tag=parkour_platform_display_0, tag=pos_2, sort=arbitrary, type=block_display] 170.5 114 -57.5
tp @n[tag=parkour_platform_display_0, tag=pos_3, sort=arbitrary, type=block_display] 168.5 114 -58.5
tp @n[tag=parkour_platform_display_0, tag=pos_4, sort=arbitrary, type=block_display] 169.5 114 -58.5
tp @n[tag=parkour_platform_display_0, tag=pos_5, sort=arbitrary, type=block_display] 170.5 114 -58.5
tp @n[tag=parkour_platform_display_0, tag=pos_6, sort=arbitrary, type=block_display] 168.5 114 -59.5
tp @n[tag=parkour_platform_display_0, tag=pos_7, sort=arbitrary, type=block_display] 169.5 114 -59.5
tp @n[tag=parkour_platform_display_0, tag=pos_8, sort=arbitrary, type=block_display] 170.5 114 -59.5

execute as @e[tag=parkour_platform_display_0, sort=arbitrary, type=block_display] run data modify entity @s teleport_duration set value 40