It's highly recommended that you use this function on the `onCreate()` callback.
### addCharacterToList(name:String, type:String)
Creates a character for the `'Change Character'` event.
* `name` - Character name, example: `pico-player`, `mom-car`, `gf`, etc.
* `type` - Character type, 'boyfriend' for player, 'dad' for opponent, 'gf' for girlfriend.

### precacheSound(name:String)
* `name` - Asset name, should be located inside `mods/sounds/` or `assets/sounds/`

### precacheImage(name:String)
* `name` - Asset name, should be located inside `mods/images/`

This is mainly used for avoiding a massive game freeze for when the asset first gets used.