It's highly recommended that you use this function on the `onCreate()` callback.

These functions are mainly used for avoiding a massive game freeze when an asset first gets used.

### addCharacterToList(name:String, type:String)
Creates a character for the `'Change Character'` event.
* `name` - Character name, example: `pico-player`, `mom-car`, `gf`, etc.
* `type` - Character type, 'boyfriend' for player, 'dad' for opponent, 'gf' for girlfriend.

### precacheSound(name:String)
* `name` - Asset name, should be located inside `mods/sounds/` or `assets/sounds/`

### precacheImage(name:String)
* `name` - Asset name, should be located inside `mods/images/`

NOTE: For now precacheImage is only capable of precaching images inside `mods/`!