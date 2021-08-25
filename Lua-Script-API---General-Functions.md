### characterPlayAnim(character:String, anim:String, forced:Bool = false)
* `character` - Can be `boyfriend`, `dad` or `gf`
* `anim` - Animation name to be played
* `forced` - Can be either `true` or `false`, if set to `true`, it will force the animation to reset if the current animation is the same as the animation to play
_______________________
### characterDance(character:String)
Makes character do the idle dance
* `character` - Can be `boyfriend`, `dad` or `gf`
_______________________
### getCharacterX(type:String)
Gets the general X position of a character from the type `type`
* `type` - Can be `boyfriend`, `dad` or `gf`
_______________________
### setCharacterX(type:String)
Sets the general X position of a character from the type `type`, this will also move all precached characters from the same type into the position you want
* `type` - Can be `boyfriend`, `dad` or `gf`
_______________________
### getCharacterY(type:String)
Gets the general Y position of a character from the type `type`
* `type` - Can be `boyfriend`, `dad` or `gf`
_______________________
### setCharacterY(type:String)
Sets the general Y position of a character from the type `type`, this will also move all precached characters from the same type into the position you want
* `type` - Can be `boyfriend`, `dad` or `gf`
_______________________
### addScore(value:Int = 0)
Adds `value` to the current song's score and recalculates rating
_______________________
### setScore(value:Int = 0)
Set the current song's score to `value` and recalculates rating
_______________________
### addMisses(value:Int = 0)
Adds `value` to the current song's misses total and recalculates rating
_______________________
### setScore(value:Int = 0)
Set the current song's misses total to `value` and recalculates rating
_______________________
### addHits(value:Int = 0)
Adds `value` to the current song's notes hit total and recalculates rating
_______________________
### setHits(value:Int = 0)
Set the current song's notes hit total to `value` and recalculates rating
_______________________
### triggerEvent(name:String, arg1:String, arg2:String)
Triggers an event without you having to chart them.
* `name` - Event name on Chart Editor
* `arg1` - Value 1 on Chart Editor
* `arg2` - Value 2 on Chart Editor
_______________________
### playSound(name:String, volume:Float = 1)
* `name` - File name
* `volume` - Optional value, volume percent goes from `0` to `1`. Default value: `1`

Example: Using `playSound('confirmMenu', 0.5)` will play the menu "Accept" sound with 50% volume
_______________________
### keyJustPressed(name:String)
Get if the key `name` just got pressed on the current frame.

Keys: `'left'`, `'down'`, `'up'`, `'right'`, `'accept'`, `'back'`, `'pause'`, `'reset'`
_______________________
### keyPressed(name:String)
Get if the key `name` is being held on the current frame.

Keys: `'left'`, `'down'`, `'up'`, `'right'`
_______________________
### keyReleased(name:String)
Get if the key `name` was released on the current frame.

Keys: `'left'`, `'down'`, `'up'`, `'right'`
_______________________
### getColorFromHex(color:String)
Get the color decimal ID from an Hexadecimal value (`color`).

Example: To get orange, you should use `getColorFromHex('FF7800')` or getColorFromHex('0xFFFF7800')
_______________________
### getSongPosition()
Returns the current song position. Shortcut to `getPropertyClass('Conductor', 'songPosition')`
_______________________
### cameraSetTarget(target:String)
Makes the camera focus on a specific target
* `target` - Target can be either `boyfriend` or `dad`
_______________________
### setRatingPercent(value:Float)
Sets the rating percent in case you want to do your own rating calculation.
* `value` - Should go from `0` to `1` but can actually be whatever value you want, but it's kinda stupid to get out of the base values.
_______________________
### setRatingString(value:String)
Sets the rating name to `value` in case you want to do your own rating calculation.
_______________________
### getMouseX(camera:String)
Returns the relative mouse X position on a specific camera
* `camera` - Can be either `game`, `hud` or `other`
_______________________
### getMouseY(camera:String)
Returns the relative mouse Y position on a specific camera
* `camera` - Can be either `game`, `hud` or `other`
_______________________
### spawnNoteSplashes(x:Float, y:Float, data:Int = 0, type:Int = 0)
* `x` - X Position to spawn
* `y` - Y Position to spawn
* `data` - Note data: 0 = Left, 1 = Down, 2 = Up, 3 = Right
* `type` - Note type, 3 = Hurt note splash, etc.