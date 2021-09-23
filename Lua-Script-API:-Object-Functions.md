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