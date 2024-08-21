# SpeechTools

## Create smooth, custom speech with just one command!


<img align="right" width=200 src="https://github.com/dont-give-adam/SpeechTools-1.0/blob/6a5b67bb26e270b68a6ad978f43d2db2b4f06a87/villager.gif"> 

### Features Include:
 - Full control over typing speed, transformation, shake, and much more

 - Events system allowing you to run commands and change arguments at any point

 - All it takes is one command!

# How to use SpeechTools
_This page is viewable in game by using the command  `/function speechtools:help`_

### To create a speech entity, use the command: `/function speechtools:create {args:{},events:[]}`

## ARGUMENTS

- **`text:`**  *Raw string, no json elements. e.g: `args:{text:\"Hi there!\"}` Limitations: To use an apostrophe, you have to type `\\\\'` and to use speech marks, you have to type `\\\\'\\\\'`*
- **`extra:`** *Any json elements to be attached to the text (color, font, bold etc). e.g: `args:{extra:' "bold":true,"color":"green" '}`*
- **`duration:`** *Integer duration of the speech before disappearing. Default: 100*
- **`fade_in:`** *Duration of how long the text scales up from 0 when spawned. Set to 0 for no interpolation. Default: 3*
- **`fade_out:`** *Duration of how long the text scales down to 0 when ending. Set to 0 for no interpolation. Default: 3*
- **`typed:`** *true | false || Text is typed out over time instead of instantly appearing. Default: true*
- **`typed_delay:`** *Delay between typed letters, in ticks.  Default: 2*
- **`shake:`** *Text shaking effect, higher number, more shake. Experiment with `teleport_duration` to adjust effect. Max of 50.  Default: 0*
- **`teleport_offset:`** *String set of coordinates to teleport to. Used with teleport_duration to create a sliding effect. e.g. `args:{teleport_offset:"~ ~2 ~"}`*
- **`transformation:`** *Same format as a display entities transformation.*
- **`Other NBT`** *You can also put any other text_display nbt in `args{}`, e.g. `billboard:`, `background:`, `text_opacity:` etc.*

## EVENTS
#### To add events to your speech entity, you can use the events[] field like so: `function speechtools:create {args:{},events:[ {on:40,command:"say test"} ]}`

### **`on:`** *Required for every event, specified with the following:*
- **`on:<number>`** *Executes the event on the specified tick, e.g. `on:40` would run on the 40th tick.*
- **`on:start`** *Executes the event when the entity spawns.*
- **`on:end`** *Executes the event when the entity's duration expires.*
- **`on:type`** *(when typed:true) Executes the event for every character typed, ignoring spaces. Intended for Undertale/Animal Crossing style voices.*
- **`on:tick`** *Executes the event every tick.* 
<br />

- **`command:`** *String. Runs a command of the players choosing from the speech entity. e.g. `{on:100,command:"your:function/here"}`*
- **`modify_args:`** *Same format as the 'args' field, can be used to change transformation, change typing speed, etc. e.g. `{on:150,modify_args:{typed_delay:10}}`*
- **`pause_on_tick:`** *Integer. If an `on:tick` event is set, pause it for this many ticks.*

## Using Multiple Events
Simply add to the events array like so: `[{on:start,command:"say hi"},{on:25,modify_args: {shake:10}},{on:50,modify_args:{shake:0}}]`
<br />
If you want to add multiple events to one `on:` condition, do this: `[{on:25,command:"say hi",pause_on_tick:5,modify_args: {typed_delay:10}}]`
<br />
<br />
# Limitations
- As of right now, you can only have single element text, meaning you can't have one section of text in *`italic:true`* and the rest in *`italic:false`* . Instead you have to use multiple speech entities to achieve this effect.
- If `fade_in:` is activated, the transformation will take place on tick 3 of the entity, due to inconsistencies when ran on earlier ticks.

Any feedback/tips are appreciated!
