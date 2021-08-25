# Running a script
The script file must be named `script.lua` and put inside the song's chart folder.

# Variables
## Lua variables
* `luaDebugMode` - Enables debug mode, or should enable it, if i didn't had forgot to make the Debug mode work, oops. Default value: `false`
* `luaDeprecatedWarnings` - Tells you a function/variable is deprecated (shouldn't be used anymore), only works when Debug mode is on. Default value: `true`

## Song/Week Variables
* `curBpm` - Current BPM of the Song, shortcut to `getPropertyClass('Conductor', 'bpm')`
* `bpm` - Starting BPM of the Song, shortcut to `getProperty('SONG.bpm')`
* `scrollSpeed` - Starting Scroll speed of the Song, shortcut to `getProperty('SONG.bpm')`
* `crochet` - Interval between Beat hits
* `stepCrochet` - Interval between Step hits
* `songLength` - Song duration in milliseconds
* `songName` - Shortcut to `getProperty('SONG.song')`
* `isStoryMode` - Shortcut to `getProperty('isStoryMode')`
* `difficulty` - Returns the difficulty ID (Easy = 0, Normal = 1, Hard = 2), Shortcut to `getProperty('storyDifficulty')`
* `weekRaw` - Returns the raw current week number. I doubt you will ever use this, but hey, just in case you do, it's here.
* `week` - Returns the properly formatted current week number.

## Camera Variables
* `cameraX` - Shortcut to `getProperty('camFollowPos.x')`
* `cameraY` - Shortcut to `getProperty('camFollowPos.y')`

## Screen variables
* `screenWidth` -  Shortcut to `getPropertyClass('FlxG', width)`
* `screenHeight` -  Shortcut to `getPropertyClass('FlxG', heigth)`

## Gameplay Variables
* `startedCountdown` - Tells you if the countdown already started
* `seenCutscene` - Is set to `true` after `onCreate()` function, Shortcut to `getProperty('seenCutscene')`

* `curBeat` - Current beat number
* `curStep` - Current step number

* `score` - Current score, Shortcut to `getProperty('songScore')`
* `misses` - Current number of notes missed, Shortcut to `getProperty('songMisses')`
* `hits` - Current number of notes hit, Shortcut to `getProperty('songHits')`

* `rating` - Current rating percentage, goes from `0` to `1`. Shortcut to `getProperty('ratingPercent')`
* `ratingName` - Current rating's name. Shortcut to `getProperty('ratingString')`

* `mustHitSection` - Tells if the current section is a `Must Hit Section` (from Chart Editor)
* `botPlay` - Tells if Botplay is enabled. Shortcut to `getProperty('cpuControlled')`

## Strum/Receptor Variables
* `defaultPlayerStrumX0` - Player's default left arrow X
* `defaultPlayerStrumY0` - Player's default left arrow Y
* `defaultOpponentStrumX0` - Opponent's default left arrow X
* `defaultOpponentStrumY0` - Opponent's default left arrow Y
* `defaultPlayerStrumX1` - Player's default down arrow X
* `defaultPlayerStrumY1` - Player's default down arrow Y
* `defaultOpponentStrumX1` - Opponent's default down arrow X
* `defaultOpponentStrumY1` - Opponent's default down arrow Y
* `defaultPlayerStrumX2` - Player's default up arrow X
* `defaultPlayerStrumY2` - Player's default up arrow Y
* `defaultOpponentStrumX2` - Opponent's default up arrow X
* `defaultOpponentStrumY2` - Opponent's default up arrow Y
* `defaultPlayerStrumX3` - Player's default right arrow X
* `defaultPlayerStrumY3` - Player's default right arrow Y
* `defaultOpponentStrumX3` - Opponent's default right arrow X
* `defaultOpponentStrumY3` - Opponent's default right arrow Y

## Preferences Variables
* `downscroll` - Downscroll is enabled. Shortcut to `getPropertyClass('ClientPrefs', 'downScroll')`
* `framerate` - Current framerate limit. Shortcut to `getPropertyClass('ClientPrefs', 'framerate')`
* `ghostTapping` - Ghost tapping is enabled. Shortcut to `getPropertyClass('ClientPrefs', 'ghostTapping')`
* `hideHud` - Tells if the player has only the strums/notes visible. Shortcut to `getPropertyClass('ClientPrefs', 'hideHud')`
* `cameraZoomOnBeat` - Shortcut to `getPropertyClass('ClientPrefs', 'camZooms')`
* `flashingLights` - Shortcut to `getPropertyClass('ClientPrefs', 'flashing')`
* `noteOffset` - Represents the note delay in milliseconds (Goes from `0` to `500`). Shortcut to `getPropertyClass('ClientPrefs', 'noteOffset')`
* `lowQuality` - Shortcut to `getPropertyClass('ClientPrefs', 'lowQuality')`

# Functions
## Value/Array/Group functions
### getProperty(variable:String)
Returns a current variable from PlayState's name.

It can also be used to get the variable from an object that is inside PlayState.

Example: If you wanted to get the current health's value, you should use `getProperty('health')`.

Example 2: If you'd want to get Boyfriend's current character, you should use `getProperty('boyfriend.curCharacter')`
_______________________
### setProperty(variable:String, value:Dynamic)
Works in the same way as getProperty, but it sets a new value for the variable.

Also returns the new value of the variable.

Example: To set the player's current health to 100%, you should use `setProperty('health', 2)`
_______________________
### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Gets a variable from an array/group member on PlayState.
* `obj` - Group/Array variable
* `index` - Member ID
* `variable` - Variable to get the value

Example: To get the next event note's strum Time, you should use `getPropertyFromGroup('eventNotes', 0, 0)`

Example 2: To get the next unspawned note's noteData, you should use `getPropertyFromGroup('unspawnNotes', 0, 'noteData')`
_______________________
### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the new value to a variable from an array/group member on PlayState.
* `obj` - Group/Array variable
* `index` - Member ID
* `variable` - Variable to get the value
* `value` - New value to set
_______________________
### removeFromGroup(obj:String, index:Int, dontKill:Bool = false, dontDestroy:Bool = false)
* `obj` - Group/Array variable
* `index` - Member ID
* `dontKill` - Optional variable. Won't kill member, you will probably never ever use this.
* `dontDestroy` - Optional variable. Won't clear member from memory, you will probably never ever use this.

Example: TO remove the first spawned note from the group you should use `removeFromGroup('notes', 0)`
_______________________
### getPropertyFromClass(classVar:String, variable:String)
Works similar to `getProperty`, but can be used to access a variable inside a Class other than PlayState.

Example: To get how much time has passed since the last frame (in milliseconds), you should use `getPropertyFromClass('FlxG', 'elapsed')`.
_______________________
### setPropertyFromClass(classVar:String, variable:String, value:Dynamic)
Works similar to `setProperty`, but can be used to access a variable inside a Class other than PlayState.

Example: To make the mouse visible, you should use `getPropertyFromClass('FlxG', 'mouse.visible', true)`.