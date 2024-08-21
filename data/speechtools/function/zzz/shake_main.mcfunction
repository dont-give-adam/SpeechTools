execute unless score @s speechtools.shake matches 1 run function speechtools:zzz/uuid {function:"speechtools:zzz/text_shake"}
execute if score @s speechtools.shake matches 1 run function speechtools:zzz/uuid {function:"speechtools:zzz/text_shake_origin"}
execute if score @s speechtools.shake matches 2 run scoreboard players set @s speechtools.shake 1
