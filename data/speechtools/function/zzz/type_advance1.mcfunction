$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text2 set string storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text 0 $(stringlength)

$data modify storage speechtools:temp spacetest set string storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text $(stringlength1) $(stringlength)
execute store result score #spacetest speechtools.typed run data modify storage speechtools:temp spacetest set value " "
data remove storage speechtools:temp spacetest

$data modify storage speechtools:temp periodtest set string storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text $(stringlength1) $(stringlength)
execute store result score #periodtest speechtools.typed run data modify storage speechtools:temp periodtest set value "."
data remove storage speechtools:temp periodtest
$function speechtools:zzz/type_advance2 with storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args
