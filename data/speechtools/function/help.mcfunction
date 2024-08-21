tellraw @s [{"text":"\n\n\n\n◄(","color":"#e6e6e6","bold":true},{"text":"SPEECH","color":"#00b5fd"},{"text":"TOOLS","color":"aqua"},{"text":")"},{"text":" ||","color":"gray","bold":false},{"text":" Help Page\n","color":"aqua","bold":false}]


tellraw @s [{"text":"To create a speech entity, use the command:","color":"#00b5fd"},{"text":"\n/function speechtools:create {args:{},events:[]}","color":"aqua","clickEvent":{"action":"suggest_command","value":"/function speechtools:create {args:{},events:[]}"}},{"text":"\n\nTo customise your speech, you can add the following to the args{} field:\n"}]
tellraw @s [{"text":"ARGUMENTS\n","color":"aqua","bold": true,"underlined": true}]

tellraw @s [{"text":"text: ","color":"aqua"},{"text":"Raw string, no json elements. e.g: args:{text:\"Hi there!\"}\n Limitations: To use an apostrophe, you have to type \\\\'\n and to use speech marks, you have to type \\\\'\\\\' \n","color":"#00b5fd"}]
tellraw @s [{"text":"extra: ","color":"aqua"},{"text":"Any json elements to be attached to the text (color, font, bold etc). e.g: args:{extra:' \"bold\":true,\"color\":\"green\" '}\n","color":"#00b5fd"}]
tellraw @s [{"text":"duration: ","color":"aqua"},{"text":"Integer duration of the speech before disappearing. Default: 100\n","color":"#00b5fd"}]
tellraw @s [{"text":"wait: ","color":"aqua"},{"text":"Integer duration of ticks before the speech starts, or as a pause in events. Used for instances with multiple speech entities which start at different times. Default: 0\n","color":"#00b5fd"}]
tellraw @s [{"text":"fade_in: ","color":"aqua"},{"text":"Duration of how long the text scales up from 0 when spawned. Set to 0 for no interpolation. Default: 3\n","color":"#00b5fd"}]
tellraw @s [{"text":"fade_out: ","color":"aqua"},{"text":"Duration of how long the text scales down to 0 when ending. Set to 0 for no interpolation. Default: 3\n","color":"#00b5fd"}]
tellraw @s [{"text":"typed: ","color":"aqua"},{"text":"true | false || Text is typed out over time instead of instantly appearing. Default: true\n","color":"#00b5fd"}]
tellraw @s [{"text":"typed_delay: ","color":"aqua"},{"text":"Delay between typed letters, in ticks.  Default: 2\n","color":"#00b5fd"}]
tellraw @s [{"text":"punctuation_delay: ","color":"aqua"},{"text":"Additional tick delay when punctuation is typed (.!?:;,) Commas use half this delay.  Defaults to typed_delay value.\n","color":"#00b5fd"}]
tellraw @s [{"text":"shake: ","color":"aqua"},{"text":"Text shaking effect, higher number, more shake. Experiment with teleport_duration to adjust effect. Max of 50.  Default: 0\n","color":"#00b5fd"}]
tellraw @s [{"text":"teleport_offset: ","color":"aqua"},{"text":"String set of coordinates to teleport to. Used with teleport_duration to create a sliding effect. e.g. args:{teleport_offset:\"~ ~2 ~\"}\n","color":"#00b5fd"}]

tellraw @s [{"text":"transformation: ","color":"aqua"},{"text":"Same format as a display entities transformation.\n","color":"#00b5fd"}]

tellraw @s [{"text":"Other NBT ","color":"aqua"},{"text":"You can also put any other text_display nbt in args{}, e.g. billboard, background, text_opacity etc.\n\n","color":"#00b5fd"}]

tellraw @s [{"text":"EVENTS\n","color":"aqua","bold": true,"underlined": true}]
tellraw @s [{"text":"To add events to your speech entity, you can use the events[] field like so:","color":"#00b5fd"},{"text":"\n/function speechtools:create {args:{},events:[ {on:40,command:\"say test\"} ]}\n","color":"aqua"}]

tellraw @s [{"text":"on: ","color":"aqua","bold":true},{"text":"Required for every event, specified with the following:\n","color":"#00b5fd","bold":false}]
tellraw @s [{"text":"on:<number> ","color":"aqua"},{"text":"Executes the event on the specified tick, e.g. on:40 would run on the 40th tick.\n","color":"#00b5fd"}]
tellraw @s [{"text":"on:start ","color":"aqua"},{"text":"Executes the event when the entity spawns.\n","color":"#00b5fd"}]
tellraw @s [{"text":"on:end ","color":"aqua"},{"text":"Executes the event when the entity's duration expires.\n","color":"#00b5fd"}]
tellraw @s [{"text":"on:type ","color":"aqua"},{"text":"(when typed:true) Executes the event for every character typed, ignoring spaces. Intended for Undertale/Animal Crossing style voices.\n","color":"#00b5fd"}]
tellraw @s [{"text":"on:tick ","color":"aqua"},{"text":"Executes the event every tick.\n\n","color":"#00b5fd"}]


tellraw @s [{"text":"command: ","color":"aqua"},{"text":"String. Runs a command of the players choosing from the speech entity. e.g. {on:100,command:\"your:function/here\"}\n","color":"#00b5fd"}]
tellraw @s [{"text":"modify_args: ","color":"aqua"},{"text":"Same format as the 'args' field, can be used to change transformation, change typing speed, etc. e.g. {on:150,modify_args:{typed_delay:10}}\n","color":"#00b5fd"}]
tellraw @s [{"text":"pause_on_tick: ","color":"aqua"},{"text":"Integer. If an on:tick event is set, pause it for this many ticks.\n\n","color":"#00b5fd"}]

tellraw @s [{"text":"Using multiple events: ","color":"aqua"},{"text":"Simply add to the events array like so:\n [{on:start,command:\"say hi\"},{on:25,modify_args: {shake:10}},{on:50,modify_args:{shake:0}}]\n\n If you want to add multiple events to one on: condition, do this: [{on:25,command:\"say hi\",pause_on_tick:5,modify_args: {typed_delay:10}}]","color":"#00b5fd"}]
tellraw @s [{"text":"\n◄(","color":"#e6e6e6","bold":true},{"text":"S","color":"#00b5fd"},{"text":"T","color":"aqua"},{"text":")"},{"text":" -----------------------------------------------","color":"gray","bold":false}]
