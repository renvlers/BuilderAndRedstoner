scoreboard players add @s parkour_timer 1

scoreboard players operation @s parkour_timer_seconds = @s parkour_timer
scoreboard players operation @s parkour_timer_seconds /= #base parkour_timer_seconds
scoreboard players operation @s parkour_timer_minutes = @s parkour_timer_seconds
scoreboard players operation @s parkour_timer_minutes /= #base parkour_timer_minutes
scoreboard players operation @s parkour_timer_hours = @s parkour_timer_minutes
scoreboard players operation @s parkour_timer_hours /= #base parkour_timer_hours
scoreboard players operation @s parkour_timer_seconds %= #base parkour_timer_minutes
scoreboard players operation @s parkour_timer_minutes %= #base parkour_timer_hours