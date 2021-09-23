# Creating/Adding/Removing a Lua Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Spawns a Lua Sprite with no animations using the tag `tag`, it will be using the image `image`.png, and will be spawned on position `x`, `y``
If you want to make a Black screen with no texture, leave `image` field empty and use (luaSpriteMakeGraphic)[]

If another Lua Sprite that exists is already using the tag `tag`, it will be removed.

### luaSpriteMakeGraphic(tag:String, width:Int, height:Int, color:String)
Used for making a lua sprite use a solid color Width x Height frame instead of a texture.

* `tag` - Lua Sprite tag
* `width` - Width in pixels of the graphic you want to create
* `height` - Height in pixels of the graphic you want to create
* `color` - Color string, works the same as [getColorFromHex](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API---General-Functions/_edit#getcolorfromhexcolorstring)

Example: Use `luaSpriteMakeGraphic('testBlackSquare', 1000, 1000, '000000')` to make the Lua Sprite with the tag "testBlackSquare" turn into a 1000x1000 black square.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Spawns a Lua Sprite that supports Animations, it will be using the tag `tag`, be using the image `image`.png, the XML `image`.xml, and will be spawned on position `x`, `y`

If another Lua Sprite that exists is already using the tag `tag`, it will be removed.

### addLuaSprite(tag:String, front:Bool = false)
Adds a Lua Sprite with the specified tag, either in front or behind the characters.

### removeLuaSprite(tag:String, destroy:Bool = false)
Removes a Lua Sprite with the specified tag
* `tag` - The Lua Sprite's tag
* `destroy` - Specifies if you don't want to use the sprite anymore (Set to `false` if you want to re-add it later)
____________________
# Animation Functions
### luaSpriteAddAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds an animation `name` to the Lua Sprite using the tag `tag`, it will also overwrite another animation using the same name.
* `tag` - Lua Sprite tag
* `name` - Animation to be added's name
* `prefix` - Animation name on the .xml file
* `framerate` - Optional value, how many frames per second does the animation have, Default value is `24`
* `loop` - Optional value, should the animation loop? Default value: `true`

### luaSpriteAddAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds an animation `name` to the Lua Sprite using the tag `tag` with the specified indices on `indices`, it will also overwrite another animation using the same name.
* `tag` - Lua Sprite tag
* `name` - Animation to be added's name
* `prefix` - Animation name on the .xml file
* `indices` - What frames the animation should use, must be separated with a comma. Example: `1, 2, 3, 4, 5, 3, 4, 5`
* `framerate` - Optional value, how many frames per second does the animation have, Default value is `24`

### luaSpritePlayAnimation(tag:String, name:String, forced:Bool = false)
Plays animation `name` on the Lua Sprite with the tag `tag`.

* `tag` - Lua Sprite tag
* `name` - Animation name to play
* `forced` - If true, the animation will reset if the current animation is the same as the one you're trying to play. Default value is `false`

____________________
# Other Functions
### setLuaSpriteScrollFactor(tag:String, scrollX:Float, scrollY:Float)
How much the Lua Sprite moves along with the camera.

* `tag` - Lua Sprite tag
* `scrollX` - Horizontal movement multiplier
* `scrollY` - Vertical movement multiplier

Example: Boyfriend/Dad have a scrollX/scrollY value of 1, if you're gonna do background elements, it's highly suggested that you make the values something under 1.