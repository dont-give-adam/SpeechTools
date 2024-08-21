scoreboard players set @s speechtools.shake 2
$execute store result storage speechtools:temp random.x double 0.01 run random value -$(shake)..$(shake)
$execute store result storage speechtools:temp random.y double 0.01 run random value -$(shake)..$(shake)
#say shake
function speechtools:zzz/text_shake1 with storage speechtools:temp random
data remove storage speechtools:temp random
