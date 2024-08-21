$data merge entity @s[tag=fade_in] {start_interpolation:0,interpolation_duration:$(fade_in),transformation:$(transformation)}
$execute rotated ~ ~ run tp @s $(teleport_offset)

#$execute as @s[tag=start_command] run function speechtools:zzz/start_command {start_command:"$(start_command)"}


execute store result storage speechtools:temp uuid.1 int 1 run scoreboard players get @s speechtools.uuid1
execute store result storage speechtools:temp uuid.2 int 1 run scoreboard players get @s speechtools.uuid2
execute store result storage speechtools:temp uuid.3 int 1 run scoreboard players get @s speechtools.uuid3
execute store result storage speechtools:temp uuid.4 int 1 run scoreboard players get @s speechtools.uuid4
execute store result storage speechtools:temp uuid.dur_check int 1 run scoreboard players get @s speechtools.dur

execute as @s[tag=events] run function speechtools:zzz/events/start with storage speechtools:temp uuid
data remove storage speechtools:temp uuid
