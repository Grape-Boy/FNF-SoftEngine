### addCharacterToList(name:String, type:String)
Creates a character for the `'Change Character'` event.
* `name` - Character name, example: `pico-player`, `mom-car`, `gf`, etc.
* `type` - Character type, 'boyfriend' for player, 'dad' for opponent, 'gf' for girlfriend.

This is mainly used for avoiding a massive game freeze when the character is changed.

It's highly recommended that you use this function on the `onCreate()` callback.