
#execute unless score @s speechtools.pause_on_tick matches 1.. run function speechtools:zzz/events/tick with storage speechtools:temp uuid

$execute unless score @s speechtools.pause_on_tick matches 1.. run data modify storage speechtools:temp event set from storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].events[{on:"tick"}]

execute unless score @s speechtools.pause_on_tick matches 1.. if data storage speechtools:temp event.command run function speechtools:zzz/events/run_command with storage speechtools:temp event
execute unless score @s speechtools.pause_on_tick matches 1.. if data storage speechtools:temp event.modify_args run function speechtools:zzz/events/modify_args with storage speechtools:temp uuid
execute unless score @s speechtools.pause_on_tick matches 1.. if data storage speechtools:temp event.pause_on_tick run function speechtools:zzz/events/pause_on_tick with storage speechtools:temp event

data remove storage speechtools:temp event





$data modify storage speechtools:temp event set from storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].events[{on:$(dur_check)}]

execute if data storage speechtools:temp event.command run function speechtools:zzz/events/run_command with storage speechtools:temp event
execute if data storage speechtools:temp event.modify_args run function speechtools:zzz/events/modify_args with storage speechtools:temp uuid
execute if data storage speechtools:temp event.pause_on_tick run function speechtools:zzz/events/pause_on_tick with storage speechtools:temp event

data remove storage speechtools:temp event