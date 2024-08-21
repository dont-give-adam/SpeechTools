scoreboard objectives remove speechtools.dur
scoreboard objectives remove speechtools.dur_max
scoreboard objectives remove speechtools.dur_max.fade_out
scoreboard objectives remove speechtools.typed
scoreboard objectives remove speechtools.typed_max
scoreboard objectives remove speechtools.delay
scoreboard objectives remove speechtools.delay_max
scoreboard objectives remove speechtools.shake
scoreboard objectives remove speechtools.pause_on_tick
scoreboard objectives remove speechtools.wait
scoreboard objectives remove speechtools.uuid1
scoreboard objectives remove speechtools.uuid2
scoreboard objectives remove speechtools.uuid3
scoreboard objectives remove speechtools.uuid4

data remove storage speechtools:main entities
data remove storage speechtools:temp args
data remove storage speechtools:temp events
data remove storage speechtools:temp pos
data remove storage speechtools:temp UUID
data remove storage speechtools:temp uuid
data remove storage speechtools:temp random
data remove storage speechtools:temp spacetest
data remove storage speechtools:temp periodtest
data remove storage speechtools:temp !test
data remove storage speechtools:temp ,test
data remove storage speechtools:temp ?test
data remove storage speechtools:temp input

data remove storage speechtools:temp event

kill @e[type=text_display,tag=speechtools.text]