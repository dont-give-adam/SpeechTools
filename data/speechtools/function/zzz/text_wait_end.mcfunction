scoreboard players reset @s speechtools.wait
tag @s remove wait

$data merge entity @s[tag=!typed,tag=extra,tag=!wait] {text:'[{"text":"$(text)",$(extra)}]'}
$data merge entity @s[tag=!typed,tag=!extra,tag=!wait] {text:'[{"text":"$(text)"}]'}
