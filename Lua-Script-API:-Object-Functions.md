# Graphics Functions
### makeGraphic(obj:String, width:Int, height:Int, color:String)
Used for making an object use a solid color Width x Height frame instead of a texture.

* `obj` - Lua Sprite tag or Object variable name
* `width` - Width in pixels of the graphic you want to create
* `height` - Height in pixels of the graphic you want to create
* `color` - Color string, works the same as [getColorFromHex](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API---General-Functions/_edit#getcolorfromhexcolorstring)

Example: Use `makeGraphic('testBlackSquare', 1000, 1000, '000000')` to make the Lua Sprite with the tag "testBlackSquare" turn into a 1000x1000 black square.

### setBlendMode(obj:String, blend:String)
Changes the blend mode of a Sprite (Works similar to how Photoshop do it)

* `obj` - Lua Sprite tag or Object variable name
* `blend` - Blend mode to use. Example: `add`, `darken`, `normal`.

[List of blend modes](https://api.haxe.org/flash/display/BlendMode.html)

# Animations Functions
### addAnimationByPrefix(tag:String, name:String, prefix:String, framerate:Int = 24, loop:Bool = true)
Adds an animation `name`to the Lua Sprite/Object using the tag/variable `tag`, it will also overwrite another animation using the same name.
* `obj` - Lua Sprite tag or Object variable name
* `name` - Animation to be added's name
* `prefix` - Animation name on the .xml file
* `framerate` - Optional value, how many frames per second does the animation have, Default value is `24`
* `loop` - Optional value, should the animation loop? Default value: `true`

### addAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
Adds an animation `name` to the Lua Sprite/Object using the tag/variable `tag` with the specified indices on `indices`, it will also overwrite another animation using the same name.
* `obj` - Lua Sprite tag or Object variable name
* `name` - Animation to be added's name
* `prefix` - Animation name on the .xml file
* `indices` - What frames the animation should use, must be separated with a comma. Example: `1, 2, 3, 4, 5, 3, 4, 5`
* `framerate` - Optional value, how many frames per second does the animation have, Default value is `24`

### objectPlayAnimation(obj:String, name:String, forced:Bool = false)
Plays animation `name` on a Lua Sprite/Object with the tag/variable `obj`.

* `obj` - Lua Sprite tag or Object variable name
* `name` - Animation name to play
* `forced` - If true, the animation will reset if the current animation is the same as the one you're trying to play. Default value is `false`
_____
# Object Order/Removing
### getObjectOrder(obj:String)
Gets the object's layer position
* `obj` - Object variable/Lua Sprite tag

### setObjectOrder(obj:String, position:Int)
Sets the object's layer position
* `obj` - Object variable/Lua Sprite tag
* `position` - New position the object will be in

### removeFromGroup(obj:String, index:Int, dontDestroy:Bool = false)
* `obj` - Group/Array variable
* `index` - Member ID
* `dontDestroy` - Optional variable. Won't clear member from memory, you will probably never ever use this.

Example: TO remove the first spawned note from the group you should use `removeFromGroup('notes', 0)`
_____
# Scale Functions
### setGraphicSize(obj:String, multX:Float, multY:Float = 0)
* `obj` - Object from PlayState or Lua Sprite
* `multX` - Horizontal multiplier, default value is 1
* `multY` - Vertical multiplier, default value is 1

### scaleObject(obj:String, multX:Float, multY:Float = 0)
Works identically to **setGraphicSize**

### updateHitbox(obj:String)
Use this to update the hitbox in case you change the sprite's scale manually or via a tween.
* `obj` - Object from PlayState or Lua Sprite
_____
# Other Functions
### setScrollFactor(obj:String, scrollX:Float, scrollY:Float)
Changes how much a Sprite moves along with the camera.

* `obj` - Lua Sprite tag or Object variable name
* `scrollX` - Horizontal movement multiplier
* `scrollY` - Vertical movement multiplier

Note: Boyfriend/Opponent have a scrollX/scrollY value of 1, while Girlfriend have a scrollX/scrollY value of 0.95, if you're gonna do background elements, it's highly suggested that you make the values something under 1.

### setObjectCamera(obj:String, camera:String)
Changes on which camera should your object be drawn on

* `obj` - Lua Sprite tag or Object variable name
* `camera` - `game`, `hud` or `other`.