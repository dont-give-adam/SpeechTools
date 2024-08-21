execute store result storage speechtools:temp uuid.1 int 1 run scoreboard players get @s speechtools.uuid1
execute store result storage speechtools:temp uuid.2 int 1 run scoreboard players get @s speechtools.uuid2
execute store result storage speechtools:temp uuid.3 int 1 run scoreboard players get @s speechtools.uuid3
execute store result storage speechtools:temp uuid.4 int 1 run scoreboard players get @s speechtools.uuid4

function speechtools:zzz/text_end1 with storage speechtools:temp uuid
data remove storage speechtools:temp uuid