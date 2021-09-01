## makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Spawns a Lua Sprite with no animations using the tag `tag`, it will be using the image `image`.png, and will be spawned on position `x`, `y``

If another Lua Sprite that exists is already using the tag `tag`, it will be removed.
____________________
## makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Spawns a Lua Sprite that supports Animations, it will be using the tag `tag`, be using the image `image`.png, the XML `image`.xml, and will be spawned on position `x`, `y`

If another Lua Sprite that exists is already using the tag `tag`, it will be removed.
____________________
## luaSpriteAddAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds an animation `name` to the Lua Sprite using the tag `tag`, it will also overwrite another animation using the same name.
* `tag` - Lua Sprite tag
* `name` - Animation to be added's name
* `prefix` - Animation name on the .xml file
* `framerate` - Optional value, how many frames per second does the animation have, Default value is `24`
* `loop` - Optional value, should the animation loop? Default value: `true`
____________________
## luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds an animation `name` to the Lua Sprite using the tag `tag` with the specified indices on `indices`, it will also overwrite another animation using the same name.
* `tag` - Lua Sprite tag
* `name` - Animation to be added's name
* `prefix` - Animation name on the .xml file
* `indices` - What frames the animation should use, must be separated with a comma. Example: `1, 2, 3, 4, 5, 3, 4, 5`
* `framerate` - Optional value, how many frames per second does the animation have, Default value is `24`
____________________
## luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false)
Plays animation `name` on the Lua Sprite with the tag `tag`.

If `forced` is true, the animation will reset if the current animation is equal to `name`
____________________
## setLuaSpriteScrollFactor(tag:String, scrollX:Float, scrollY:Float)
How much the Lua Sprite moves along with the camera.

Example: Boyfriend/Dad have a scrollX/scrollY value of 1, if you're gonna do background elements, it's highly suggested that you make the values something under 1.
____________________
## addLuaSprite(tag:String, front:Bool = false)
Adds a Lua Sprite with the specified tag, either in front or behind the characters.
____________________
## removeLuaSprite(tag:String)
Removes a Lua Sprite with the specified tag