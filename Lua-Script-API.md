# Running a script
There's four types of LUA Scripts you can run:
* A Stage Script, it will only run if the song's stage has been set to the same as its name, it should have the same name as your stage's .json file and should be located inside mods/stages/
* A Note Type Script, it will only run if the said Note Type is being used on the chart, it should be located inside mods/custom_notetypes/
* An Event Script, it will only run if the said Event is being used on the chart, it should be located inside mods/custom_events/
* Song's Script, should be named `script.lua` and saved inside the song's chart folder, it will only run on this specific song, no matter the difficulty, stage or whatever else.

# API Documentation
* [Variables](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Variables)
* [General Functions](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-General-Functions)
* [Tweens and Timers](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Tweens-and-Timers)
* [Value Setting and Getting Functions](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Value-Setting-and-Getting-Functions)
* [Functions for Dialogues and Cutscenes](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Functions-for-Dialogues-and-Cutscenes)
* [Custom Sprites/Objects](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Custom-Sprites-Functions)
* [Precaching Stuff](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API:-Precaching-Functions)

# Example Scripts
* [Template Script with all Callbacks explained](https://cdn.discordapp.com/attachments/885704785041440788/890432876489867264/TemplateScript.lua)
* [Example of Triggering an Event via Lua - Change Characters on Key Press/Precaching characters](https://cdn.discordapp.com/attachments/866856727621795850/880169101891342366/ChangeCharacterScript.lua)
* [Tween Example - Boyfriend gets bigger on his turn](https://cdn.discordapp.com/attachments/866856727621795850/880169105087422484/ScaleScript.lua)
* [Animated Sprite Example - Dad clone behind Dad that bops head on Beat hit](https://cdn.discordapp.com/attachments/866856727621795850/900523260180049940/AnimatedLuaSpriteScript.lua)
* [Dialogue Script - Drop this file + your dialogue.json in your Song's chart folder!](https://cdn.discordapp.com/attachments/866856727621795850/890335034786062336/script.lua)
* [Video Example - Cutscene on Bopeebo (Story Mode)](https://cdn.discordapp.com/attachments/840678333602857040/888568130283139082/bopeeboTestVideo.zip)
* [Example of a Custom Event - Opponent Fade](https://cdn.discordapp.com/attachments/840678333602857040/888568125413552168/CustomEvent.zip)
* [Example of a Custom Note Type - Instakill Note](https://cdn.discordapp.com/attachments/866856727621795850/900525142256525372/Instakill_Note.zip)
* [Example of a Custom Stage - Copy of Week 1 Stage made fully in LUA](https://cdn.discordapp.com/attachments/866856727621795850/900523259345371177/ExampleStage.zip)
* [setPropertyFromClass - Changing Game Over Sprites/Sounds](https://cdn.discordapp.com/attachments/889357899015540736/901470021652447233/script.lua)

FOR MORE ADVANCED USERS:
* [Play with your Mouse instead of Arrow Keys](https://cdn.discordapp.com/attachments/840678333602857040/888568120728502272/script.lua)