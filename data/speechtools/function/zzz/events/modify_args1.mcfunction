

execute if data storage speechtools:temp args{fade_in:0} run tag @s remove fade_in
execute if data storage speechtools:temp args.fade_in unless data storage speechtools:temp args{fade_in:0} run tag @s add fade_out

execute if data storage speechtools:temp args{fade_out:0} run tag @s remove fade_out
execute if data storage speechtools:temp args.fade_out unless data storage speechtools:temp args{fade_in:0} run tag @s add fade_out

execute if data storage speechtools:temp args.wait run tag @s add wait

execute if data storage speechtools:temp args{typed:false} run tag @s remove typed
execute if data storage speechtools:temp args{typed:true} run tag @s add typed

execute if data storage speechtools:temp args{extra:''} run tag @s remove extra
execute if data storage speechtools:temp args.extra unless data storage speechtools:temp args{extra:""} run tag @s add extra


execute if data storage speechtools:temp args{shake:0} run tag @s remove shake
execute if data storage speechtools:temp args.shake unless data storage speechtools:temp args{shake:0} run tag @s add shake

execute store result score #c speechtools.dur run data get storage speechtools:temp args.shake 1
execute if score #c speechtools.dur matches 51.. run data modify storage speechtools:temp args.shake set value 50


$scoreboard players set @s speechtools.dur_max $(duration)
$scoreboard players set @s speechtools.dur_max.fade_out $(duration)
$scoreboard players remove @s[tag=fade_out] speechtools.dur_max.fade_out $(fade_out)
execute if data storage speechtools:temp args.wait store result score @s speechtools.wait run data get storage speechtools:temp args.wait
$scoreboard players set @s speechtools.delay_max $(typed_delay)

execute if data storage speechtools:temp args.text store result storage speechtools:temp args.textlength int 1 run data get storage speechtools:temp args.text
execute if data storage speechtools:temp args.text store result score @s speechtools.typed_max run data get storage speechtools:temp args.textlength

$data merge entity @s {billboard:"$(billboard)",line_width:$(line_width),text_opacity:$(text_opacity),alignment:"$(alignment)",background:$(background),see_through:$(see_through),teleport_duration:$(teleport_duration),brightness:$(brightness),view_range:$(view_range),shadow:$(shadow),shadow_strength:$(shadow_strength),shadow_radius:$(shadow_radius),default_background:$(default_background)}

$data merge entity @s[tag=!typed,tag=extra] {text:'[{"text":"$(text)",$(extra)}]'}
$data merge entity @s[tag=!typed,tag=!extra] {text:'[{"text":"$(text)"}]'}

$execute if data storage speechtools:temp args.transformation run data merge entity @s {transformation:$(transformation),interpolation_duration:$(interpolation_duration),start_interpolation:0}
