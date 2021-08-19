* Example:
```
psychic:left bf:right
:0:talk:0.05:normal:What brings you here so late at night?
:1:talk:0.05:normal:Beep.
:0:angry:0.05:angry:Drop the act already.
:0:unamused:0.05:normal:I could feel your malicious intent the\nmoment you stepped foot in here.
:1:talk:0.05:normal:Bep bee aa skoo dep?
:0:talk:0.05:normal:I wouldn't try the door if I were you.
:0:unamused:0.05:normal:Now...
:0:talk:0.05:normal:I have a couple of questions to ask you...
:0:angry:0.1:normal:And you WILL answer them.
```

* The first line will define the characters you will use on the dialogue
  * First value is the character
  * Second value is the character's position ("left", "center" or "right")
  * You separate the characters by adding a space between them
  * It's important that you keep in mind their creation order, as it will be used on the dialogue lines's first value

* Dialogue lines must start with a `:` and every value is separated by another `:`, the values are in the respective order:
  * Character speaking's ID (Based on character creation order)
  * Animation to use during this line
  * Text speed, default is 0.05 (20 characters per second)
  * Speech bubble type ("normal" or "angry")
  * Text. Warning! Don't use this kind of quote: `’`, use this instead: `'`