# Files Required
You're going to need your character's .png and .xml files, they must have the same file name.
Although that's optional, you will also need your character's health icon, it is a **300x150** file that must have its name starting with `icon-`!

Put the character .png/.xml files inside `mods/images/characters/` and put the health icon inside `mods/images/icons/`.

# Doing the deed
Press 8 during a song to open the Character Editor.

In this case i will be doing a character named `bf-bald` the character .png/.xml is called `BaldBF_Assets` and the health icon file is called `icon-bf-bald.png`.

This is what you should be seeing when you open the Character Editor:

![](https://i.imgur.com/tR05EMP.png)

First off of all, this is very important, you have to check/uncheck the box saying if your character is Playable or not, in my case i will be doing a playable character.

![](https://i.imgur.com/9hc8TQg.png)

Now just type the character image and health icon name and press the "Reload image" button:

![](https://i.imgur.com/CaCGvu7.png)

Once loaded, you now have to adjust the character's position to whatever you prefer.

In my case, those were my settings:

![](https://i.imgur.com/NbK8ezF.png)

Now, you just have to add the animations and configure the offsets:

![](https://i.imgur.com/3YxaDNB.png)

Once you're done with it, go to the Character tab and press the "Save Character" button.

Save your character file in `mods/characters/`

# Making the character show up on Chart Editor

Go to `assets/data/` and open characterList.txt

Type in your character name and save:

![](https://i.imgur.com/T7FyxGw.png)