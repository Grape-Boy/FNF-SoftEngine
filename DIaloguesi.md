# Characters/Portraits
## Files needed
The Character portrait .png AND .xml files.

![](https://i.imgur.com/jtXKRaT.png)

## Doing the Portrait
Go into the Main Menu and Press 7 to Open the Editors Master Menu.

(This is the Main Menu, just in case you don't know what that means.)

![](https://i.imgur.com/Np8uNro.png)

Then select "Dialogue Portrait Editor".

Once you're in, this is what you should be seeing:

![](https://i.imgur.com/nlWlNpp.png)

Fill the fields and add the animations you want.

After that, save your new Dialogue Portrait JSON file on `mods/images/dialogues/`

You now should be ready to do your Dialogue.

# Dialogues

Open the Editors Master Menu and select "Dialogue Editor".

![](https://i.imgur.com/PvoWMVs.png)

Just read the texts at the upper part of the screen, which explains how to use the Editor.

Fill the fields as you wish, then save the dialogue.json file it generates in the same folder as your Song's charts.

# Playing your Dialogue (on LUA/Downloaded Build)

[Click here to download this script (drop it in your Song's charts folder).](https://cdn.discordapp.com/attachments/866856727621795850/890335034786062336/script.lua)

# Playing your Dialogue (on Source Code)

Go into **source/PlayState.hx** and search for this line:

![](https://i.imgur.com/RrcgUzv.png)

Now change it to this:

![](https://i.imgur.com/Tsg9fDX.png)