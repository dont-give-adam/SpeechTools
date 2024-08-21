scoreboard players add @s speechtools.dur 1
execute if score @s speechtools.dur matches 3 run function speechtools:zzz/uuid {function:"speechtools:zzz/text_init"}


execute as @s[tag=events] run function speechtools:zzz/events/check
scoreboard players remove @s[scores={speechtools.pause_on_tick=1..}] speechtools.pause_on_tick 1

execute as @s[tag=typed] unless score @s speechtools.typed >= @s speechtools.typed_max run function speechtools:zzz/text_typed
execute as @s[tag=typed] if score @s speechtools.typed >= @s speechtools.typed_max run tag @s remove typed

execute as @s[tag=shake] run function speechtools:zzz/shake_main

execute if score @s speechtools.dur = @s speechtools.dur_max.fade_out run function speechtools:zzz/uuid {function:"speechtools:zzz/text_fade_out"}
execute if score @s speechtools.dur >= @s speechtools.dur_max run function speechtools:zzz/text_end


