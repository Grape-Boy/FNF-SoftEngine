# Creating/Adding/Removing a Lua Sprite
### makeLuaSprite(tag:String, image:String, x:Float, y:Float)
Spawns a Lua Sprite with no animations using the tag `tag`, it will be using the image `image`.png, and will be spawned on position `x`, `y`
If you want to make a Black screen with no texture, leave `image` field empty and use (luaSpriteMakeGraphic)[]

If another Lua Sprite that exists is already using the tag `tag`, it will be removed.

### makeAnimatedLuaSprite(tag:String, image:String, x:Float, y:Float)
Spawns a Lua Sprite that supports Animations, it will be using the tag `tag`, be using the image `image`.png, the XML `image`.xml, and will be spawned on position `x`, `y`

If another Lua Sprite that exists is already using the tag `tag`, it will be removed.

### addLuaSprite(tag:String, front:Bool = false)
Adds a Lua Sprite with the specified tag, either in front or behind the characters.

### removeLuaSprite(tag:String, destroy:Bool = true)
Removes a Lua Sprite with the specified tag
* `tag` - The Lua Sprite's tag
* `destroy` - Specifies if you don't want to use the sprite anymore. Default value is `true` (Set to `false` if you want to re-add it later)