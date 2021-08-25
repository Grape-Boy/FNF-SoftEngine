## General Getters and Setters
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
_______________________
## Getters and Setters for [Lua Sprites](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Custom-Sprites-Functions)
### getPropertyLuaSprite(tag:String, variable:String)
Returns a variable from the Lua Sprite using the tag `tag`

Example: To get the alpha value of a Lua Sprite with the tag `bgShit`, use `getPropertyLuaSprite('bgShit', 'alpha')`
_______________________
### setPropertyLuaSprite(tag:String, variable:String, value:Dynamic)
Sets the value of a variable from the Lua Sprite using the tag `tag`

Example: To set the angle value of a Lua Sprite with the tag `testSprite` to 15, use `setPropertyLuaSprite('testSprite', 'angle', 15)`