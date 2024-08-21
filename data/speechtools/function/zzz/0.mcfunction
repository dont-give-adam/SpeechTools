tp @s ~ ~ ~ ~ ~


tag @s add speechtools.text
execute unless data storage speechtools:temp args{fade_in:0} run tag @s add fade_in
execute unless data storage speechtools:temp args{fade_out:0} run tag @s add fade_out

execute unless data storage speechtools:temp args{wait:0} run tag @s add wait

execute if data storage speechtools:temp args{typed:true} run tag @s add typed
execute if data storage speechtools:temp events run tag @s add events
execute unless data storage speechtools:temp args{extra:''} run tag @s add extra

execute unless data storage speechtools:temp args{shake:0} run tag @s add shake
execute store result score #c speechtools.dur run data get storage speechtools:temp args.shake 1
execute if score #c speechtools.dur matches 51.. run data modify storage speechtools:temp args.shake set value 50


$scoreboard players set @s speechtools.dur_max $(duration)
$scoreboard players set @s speechtools.dur_max.fade_out $(duration)
$scoreboard players remove @s[tag=fade_out] speechtools.dur_max.fade_out $(fade_out)
$scoreboard players set @s[tag=wait] speechtools.wait $(wait)
$scoreboard players set @s speechtools.delay_max $(typed_delay)

execute store result storage speechtools:temp args.textlength int 1 run data get storage speechtools:temp args.text
execute store result score @s speechtools.typed_max run data get storage speechtools:temp args.textlength

$data merge entity @s[tag=fade_in] {start_interpolation:0,transformation:{scale:[0.0f,0.0f,0.0f]},billboard:"$(billboard)",line_width:$(line_width),text_opacity:$(text_opacity),alignment:"$(alignment)",background:$(background),see_through:$(see_through),teleport_duration:$(teleport_duration),brightness:$(brightness),view_range:$(view_range),shadow:$(shadow),shadow_strength:$(shadow_strength),shadow_radius:$(shadow_radius),default_background:$(default_background)}
$data merge entity @s[tag=!fade_in] {start_interpolation:0,transformation:$(transformation),billboard:"$(billboard)",line_width:$(line_width),text_opacity:$(text_opacity),alignment:"$(alignment)",background:$(background),see_through:$(see_through),teleport_duration:$(teleport_duration),brightness:$(brightness),view_range:$(view_range),shadow:$(shadow),shadow_strength:$(shadow_strength),shadow_radius:$(shadow_radius),default_background:$(default_background)}

$data merge entity @s[tag=!typed,tag=extra,tag=!wait] {text:'[{"text":"$(text)",$(extra)}]'}
$data merge entity @s[tag=!typed,tag=!extra,tag=!wait] {text:'[{"text":"$(text)"}]'}


$execute rotated ~ ~ run tp @s $(teleport_offset)

data modify storage speechtools:temp pos set from entity @s Pos
data modify storage speechtools:temp args.posx set from storage speechtools:temp pos[0]
data modify storage speechtools:temp args.posy set from storage speechtools:temp pos[1]
data modify storage speechtools:temp args.posz set from storage speechtools:temp pos[2]
data remove storage speechtools:temp pos

#$data merge entity @s {Tags:["speechtools.text"],start_interpolation:0,transformation:{scale:[0.0f,0.0f,0.0f]},text:'$(text)',billboard:"$(billboard)",line_width:$(line_width),text_opacity:$(text_opacity),alignment:"$(alignment)",background:$(background),see_through:$(see_through)}

#$data merge entity @s {$(nbt)}

data modify storage speechtools:temp UUID set from entity @s UUID
execute store result score @s speechtools.uuid1 run data get storage speechtools:temp UUID[0]
execute store result score @s speechtools.uuid2 run data get storage speechtools:temp UUID[1]
execute store result score @s speechtools.uuid3 run data get storage speechtools:temp UUID[2]
execute store result score @s speechtools.uuid4 run data get storage speechtools:temp UUID[3]
data remove storage speechtools:temp UUID

data modify storage speechtools:main entities append value {}
execute store result storage speechtools:main entities[-1].uuid1 int 1 run scoreboard players get @s speechtools.uuid1
execute store result storage speechtools:main entities[-1].uuid2 int 1 run scoreboard players get @s speechtools.uuid2
execute store result storage speechtools:main entities[-1].uuid3 int 1 run scoreboard players get @s speechtools.uuid3
execute store result storage speechtools:main entities[-1].uuid4 int 1 run scoreboard players get @s speechtools.uuid4
data modify storage speechtools:main entities[-1].args set from storage speechtools:temp args
data modify storage speechtools:main entities[-1].events set from storage speechtools:temp events



schedule function speechtools:zzz/text_main1 1t replace