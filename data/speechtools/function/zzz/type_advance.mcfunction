execute store result storage speechtools:temp uuid.1 int 1 run scoreboard players get @s speechtools.uuid1
execute store result storage speechtools:temp uuid.2 int 1 run scoreboard players get @s speechtools.uuid2
execute store result storage speechtools:temp uuid.3 int 1 run scoreboard players get @s speechtools.uuid3
execute store result storage speechtools:temp uuid.4 int 1 run scoreboard players get @s speechtools.uuid4

execute store result storage speechtools:temp uuid.stringlength1 int 1 run scoreboard players get @s speechtools.typed
execute store result storage speechtools:temp uuid.stringlength int 1 run scoreboard players add @s speechtools.typed 1
scoreboard players reset @s speechtools.delay

function speechtools:zzz/type_advance1 with storage speechtools:temp uuid
data remove storage speechtools:temp uuid