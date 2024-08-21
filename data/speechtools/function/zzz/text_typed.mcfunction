scoreboard players add @s speechtools.delay 1
execute if score @s speechtools.delay >= @s speechtools.delay_max run function speechtools:zzz/uuid {function:"speechtools:zzz/type_advance"}
