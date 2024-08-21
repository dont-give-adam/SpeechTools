$data modify storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text2 set string storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text 0 $(stringlength)

$data modify storage speechtools:temp input set string storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args.text $(stringlength1) $(stringlength)

data modify storage speechtools:temp spacetest set from storage speechtools:temp input 
execute store result score #spacetest speechtools.typed run data modify storage speechtools:temp spacetest set value " "
data remove storage speechtools:temp spacetest

data modify storage speechtools:temp periodtest set from storage speechtools:temp input 
execute store result score #periodtest speechtools.typed run data modify storage speechtools:temp periodtest set value "."
data remove storage speechtools:temp periodtest

data modify storage speechtools:temp ?test set from storage speechtools:temp input 
execute store result score #?test speechtools.typed run data modify storage speechtools:temp ?test set value "?"
data remove storage speechtools:temp ?test

data modify storage speechtools:temp !test set from storage speechtools:temp input 
execute store result score #!test speechtools.typed run data modify storage speechtools:temp !test set value "!"
data remove storage speechtools:temp !test

data modify storage speechtools:temp ,test set from storage speechtools:temp input 
execute store result score #,test speechtools.typed run data modify storage speechtools:temp ,test set value ","
data remove storage speechtools:temp ,test

data modify storage speechtools:temp :test set from storage speechtools:temp input 
execute store result score #:test speechtools.typed run data modify storage speechtools:temp :test set value ":"
data remove storage speechtools:temp :test

data modify storage speechtools:temp ;test set from storage speechtools:temp input 
execute store result score #;test speechtools.typed run data modify storage speechtools:temp ;test set value ";"
data remove storage speechtools:temp ;test

data remove storage speechtools:temp input
$function speechtools:zzz/type_advance2 with storage speechtools:main entities[{uuid1:$(1),uuid2:$(2),uuid3:$(3),uuid4:$(4)}].args
