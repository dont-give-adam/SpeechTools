data modify storage speechtools:temp args set from storage speechtools:temp event.modify_args



$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text set from storage speechtools:temp event.modify_args.text
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.extra set from storage speechtools:temp event.modify_args.extra
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.duration set from storage speechtools:temp event.modify_args.duration
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.wait set from storage speechtools:temp event.modify_args.wait
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.typed set from storage speechtools:temp event.modify_args.typed
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.typed_delay set from storage speechtools:temp event.modify_args.typed_delay
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.punctuation_delay set from storage speechtools:temp event.modify_args.punctuation_delay
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.fade_in set from storage speechtools:temp event.modify_args.fade_in
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.fade_out set from storage speechtools:temp event.modify_args.fade_out
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.start_command set from storage speechtools:temp event.modify_args.start_command
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.end_command set from storage speechtools:temp event.modify_args.end_command
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.on_type_command set from storage speechtools:temp event.modify_args.on_type_command
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.teleport_offset set from storage speechtools:temp event.modify_args.teleport_offset
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.teleport_duration set from storage speechtools:temp event.modify_args.teleport_duration
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.shake set from storage speechtools:temp event.modify_args.shake
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.line_width set from storage speechtools:temp event.modify_args.line_width
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text_opacity set from storage speechtools:temp event.modify_args.text_opacity
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.alignment set from storage speechtools:temp event.modify_args.alignment
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.background set from storage speechtools:temp event.modify_args.background
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.see_through set from storage speechtools:temp event.modify_args.see_through
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.billboard set from storage speechtools:temp event.modify_args.billboard
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.brightness set from storage speechtools:temp event.modify_args.brightness
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.view_range set from storage speechtools:temp event.modify_args.view_range
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.background set from storage speechtools:temp event.modify_args.background
$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.transformation set from storage speechtools:temp event.modify_args.transformation

$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.interpolation_duration set from storage speechtools:temp event.modify_args.interpolation_duration
$execute unless data storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.interpolation_duration run data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.interpolation_duration set value 0

$function speechtools:zzz/events/modify_args1 with storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args

#function speechtools:zzz/uuid {function:"speechtools:zzz/events/args1"}
data remove storage speechtools:temp args

