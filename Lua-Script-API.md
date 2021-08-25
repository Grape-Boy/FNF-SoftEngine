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