$data modify storage speechtools:temp args set value $(args)
$data modify storage speechtools:temp events set value $(events)

execute unless data storage speechtools:temp args.text run data modify storage speechtools:temp args.text set value "Sample Text"
execute unless data storage speechtools:temp args.extra run data modify storage speechtools:temp args.extra set value ''

execute unless data storage speechtools:temp args.duration run data modify storage speechtools:temp args.duration set value 100
execute unless data storage speechtools:temp args.wait run data modify storage speechtools:temp args.wait set value 0


execute unless data storage speechtools:temp args.typed run data modify storage speechtools:temp args.typed set value true
execute unless data storage speechtools:temp args.typed_delay run data modify storage speechtools:temp args.typed_delay set value 2
execute unless data storage speechtools:temp args.punctuation_delay run data modify storage speechtools:temp args.punctuation_delay set from storage speechtools:temp args.typed_delay

execute unless data storage speechtools:temp args.fade_in run data modify storage speechtools:temp args.fade_in set value 3
execute unless data storage speechtools:temp args.fade_out run data modify storage speechtools:temp args.fade_out set value 3

execute unless data storage speechtools:temp args.teleport_offset run data modify storage speechtools:temp args.teleport_offset set value "~ ~ ~ ~ ~"
execute unless data storage speechtools:temp args.teleport_duration run data modify storage speechtools:temp args.teleport_duration set value 1

execute unless data storage speechtools:temp args.shake run data modify storage speechtools:temp args.shake set value 0



execute unless data storage speechtools:temp args.line_width run data modify storage speechtools:temp args.line_width set value 200
execute unless data storage speechtools:temp args.text_opacity run data modify storage speechtools:temp args.text_opacity set value -1
execute unless data storage speechtools:temp args.alignment run data modify storage speechtools:temp args.alignment set value "center"
execute unless data storage speechtools:temp args.background run data modify storage speechtools:temp args.background set value 0
execute unless data storage speechtools:temp args.see_through run data modify storage speechtools:temp args.see_through set value false
execute unless data storage speechtools:temp args.billboard run data modify storage speechtools:temp args.billboard set value "center"
execute unless data storage speechtools:temp args.brightness run data modify storage speechtools:temp args.brightness set value {}
execute unless data storage speechtools:temp args.view_range run data modify storage speechtools:temp args.view_range set value 1.0

execute unless data storage speechtools:temp args.shadow run data modify storage speechtools:temp args.shadow set value true
execute unless data storage speechtools:temp args.shadow_strength run data modify storage speechtools:temp args.shadow_strength set value 0
execute unless data storage speechtools:temp args.shadow_radius run data modify storage speechtools:temp args.shadow_radius set value 0
execute unless data storage speechtools:temp args.default_background run data modify storage speechtools:temp args.default_background set value false

execute unless data storage speechtools:temp args.transformation.scale run data modify storage speechtools:temp args.transformation.scale set value [1f,1f,1f]
execute unless data storage speechtools:temp args.transformation.translation run data modify storage speechtools:temp args.transformation.translation set value [0f,0f,0f]
execute unless data storage speechtools:temp args.transformation.left_rotation run data modify storage speechtools:temp args.transformation.left_rotation set value [0f,0f,0f,1f]
execute unless data storage speechtools:temp args.transformation.right_rotation run data modify storage speechtools:temp args.transformation.right_rotation set value [0f,0f,0f,1f]




execute summon text_display run function speechtools:zzz/0 with storage speechtools:temp args
execute if entity @n[type=text_display,tag=!speechtools.text,distance=..0.0001] run function speechtools:zzz/error
data remove storage speechtools:temp args
data remove storage speechtools:temp events

