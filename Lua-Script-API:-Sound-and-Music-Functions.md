# Start Sound/Music
### playMusic(sound:String, volume:Float = 1, loop:Bool = false)
* `sound` - File name (Should be located in `mods/music/` or `assets/music/`)
* `volume` - Optional value, volume percent goes from `0` to `1`. Default value: `1`
* `volume` - Optional value, if the music should loop indefinitely. Default value: `false`

### playSound(sound:String, volume:Float = 1, ?tag:String)
* `sound` - File name (Should be located in `mods/sounds/` or `assets/sounds/`)
* `volume` - Optional value, volume percent goes from `0` to `1`. Default value: `1`
* OPTIONAL: `tag` - Should only be used if you want to pause, resume, change the time, volume or fade in/out your sound, if you don't want to use it, don't include a third value.

# Control Sound/Music
### stopSound
This function will stop the sound AND remove it permanently!
* `tag` - Sound tag

### pauseSound
* `tag` - Sound tag

### resumeSound
* `tag` - Sound tag

Example: Using `playSound('confirmMenu', 0.5)` will play the menu "Accept" sound with 50% volume

# Fade in/out
### soundFadeIn(tag:String, duration:Float, fromValue:Float = 0, toValue:Float = 1)
* `tag` - Sound tag, leave this field empty if you want to do a fade in on the Background music instead
* `duration` - The time it takes for the volume to go from `fromValue` to `toValue`
* `fromValue` - Starting value. Default value is `0`
* `toValue` - End value. Default value is `1`

### soundFadeOut(tag:String, duration:Float, toValue:Float = 0)
* `tag` - Sound tag, leave this field empty if you want to do a fade out on the Background music instead
* `duration` - The time it takes for the volume to go from the starting volume to `toValue`
* `toValue` - End value. Default value is `0`

### soundFadeCancel(tag:String)
* `tag` - Sound tag, leave this field empty if you want cancel the Background music's fade in/out instead

# Getters/Setters
### getSoundVolume(tag:String)
* `tag` - Sound tag, leave this field empty if you want get the Background music's volume instead

### setSoundVolume(tag:String, value:Float)
* `tag` - Sound tag, leave this field empty if you want change the Background music's volume instead
* `value` - Goes from 0 to 1.

### getSoundTime(tag:String)
Gets the current sound's position in miliseconds
* `tag` - Sound tag

### setSoundTime(tag:String, value:Float)
Sets the current sound's position in miliseconds
* `tag` - Sound tag
* `value` - New position

Note: Value 5000 = 5 seconds