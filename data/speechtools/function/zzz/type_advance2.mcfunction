$data modify entity @s[tag=extra] text set value '[{"text":"$(text2)",$(extra)}]'
$data modify entity @s[tag=!extra] text set value '[{"text":"$(text2)"}]'

#$execute as @s[tag=on_type_command] if score #spacetest speechtools.typed matches 1 run function speechtools:zzz/on_type_command {on_type_command:"$(on_type_command)"}

execute store result storage speechtools:temp uuid.1 int 1 run scoreboard players get @s speechtools.uuid1
execute store result storage speechtools:temp uuid.2 int 1 run scoreboard players get @s speechtools.uuid2
execute store result storage speechtools:temp uuid.3 int 1 run scoreboard players get @s speechtools.uuid3
execute store result storage speechtools:temp uuid.4 int 1 run scoreboard players get @s speechtools.uuid4
execute store result storage speechtools:temp uuid.dur_check int 1 run scoreboard players get @s speechtools.dur

execute as @s[tag=events] if score #spacetest speechtools.typed matches 1 run function speechtools:zzz/events/type with storage speechtools:temp uuid
data remove storage speechtools:temp uuid


$execute if score #periodtest speechtools.typed matches 0 run scoreboard players remove @s speechtools.delay $(punctuation_delay)
$execute if score #?test speechtools.typed matches 0 run scoreboard players remove @s speechtools.delay $(punctuation_delay)
$execute if score #!test speechtools.typed matches 0 run scoreboard players remove @s speechtools.delay $(punctuation_delay)
$execute if score #:test speechtools.typed matches 0 run scoreboard players remove @s speechtools.delay $(punctuation_delay)
$execute if score #;test speechtools.typed matches 0 run scoreboard players remove @s speechtools.delay $(punctuation_delay)


$execute if score #,test speechtools.typed matches 0 run scoreboard players set #, speechtools.typed $(punctuation_delay)
execute if score #,test speechtools.typed matches 0 run scoreboard players operation #, speechtools.typed /= #2 speechtools.typed
execute if score #,test speechtools.typed matches 0 run scoreboard players operation @s speechtools.delay -= #, speechtools.typed