# General Getters
### getProperty(variable:String)
Returns a current variable from PlayState's name.

It can also be used to get the variable from an object that is inside PlayState or a Lua Sprite.

Example: If you wanted to get the current health's value, you should use `getProperty('health')`.

Example 2: If you'd want to get Boyfriend's current character, you should use `getProperty('boyfriend.curCharacter')`

### getPropertyFromGroup(obj:String, index:Int, variable:Dynamic)
Gets a variable from an array/group member on PlayState.
* `obj` - Group/Array variable
* `index` - Member ID
* `variable` - Variable to get the value

Example: To get the next event note's strum Time, you should use `getPropertyFromGroup('eventNotes', 0, 0)`

Example 2: To get the next unspawned note's noteData, you should use `getPropertyFromGroup('unspawnNotes', 0, 'noteData')`

### getPropertyFromClass(classVar:String, variable:String)
Works similar to `getProperty`, but can be used to access a variable inside a Class other than PlayState.

Example: To get how much time has passed since the last frame (in milliseconds), you should use `getPropertyFromClass('flixel.FlxG', 'elapsed')`.
_______________________
# General Setters
### setProperty(variable:String, value:Dynamic)
Works in the same way as getProperty, but it sets a new value for the variable.

Also returns the new value of the variable.

Example: To set the player's current health to 100%, you should use `setProperty('health', 2)`

### setPropertyFromGroup(obj:String, index:Int, variable:Dynamic, value:Dynamic)
Sets the new value to a variable from an array/group member on PlayState.
* `obj` - Group/Array variable
* `index` - Member ID
* `variable` - Variable to get the value
* `value` - New value to set

### setPropertyFromClass(classVar:String, variable:String, value:Dynamic)
Works similar to `setProperty`, but can be used to access a variable inside a Class other than PlayState.

Example: To make the mouse visible, you should use `getPropertyFromClass('FlxG', 'mouse.visible', true)`.