#$execute as @s[tag=end_command] run function speechtools:zzz/text_end2 with storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args


execute store result storage speechtools:temp uuid.1 int 1 run scoreboard players get @s speechtools.uuid1
execute store result storage speechtools:temp uuid.2 int 1 run scoreboard players get @s speechtools.uuid2
execute store result storage speechtools:temp uuid.3 int 1 run scoreboard players get @s speechtools.uuid3
execute store result storage speechtools:temp uuid.4 int 1 run scoreboard players get @s speechtools.uuid4
execute store result storage speechtools:temp uuid.dur_check int 1 run scoreboard players get @s speechtools.dur

execute as @s[tag=events] run function speechtools:zzz/events/end with storage speechtools:temp uuid
data remove storage speechtools:temp uuid



$data remove storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}]
#if you add end events
kill @s