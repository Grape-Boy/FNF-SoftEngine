## startDialogue(dialogueFile:String, song:String = null)
Starts a dialogue loading a file inside `mods/data/`.
* `dialogueFile` - .TXT file to load
* `song` - Optional value for a Background music during the dialogue

Example: If i want to load a dialogue file `mods/data/bopeebo/dialogue.txt` using the pause menu song (Breakfast), i should use: `startDialogue('bopeebo/dialogue', 'breakfast')`

NOTE: When the dialogue is ended, it calls `startCountdown()`

NOTE 2: `onNextDialogue(line)` callback is called for every dialogue line passed

## startCountdown()
In case you forced a countdown stop for doing a pre-song cutscene or something, this starts the countdown again.