**1.** First off, you need to name your dialogue file as your song name + "Dialogue.txt". If my song is called `focus`, the dialogue file then should be named `focusDialogue.txt`.
Place the dialogue file in the same folder as your charts and it should be ready to be loaded.

**2.** Now, open PlayState.hx and go to line 971, you should be seeing this:

![](https://i.imgur.com/udchEJX.png)

Add your song to it and the dialogueIntro function, just like that:

![](https://i.imgur.com/b7NCVrf.png)

If you'd prefer a small delay (in this case, 0.8 seconds) before the dialogue starts, do this:

![](https://i.imgur.com/Hop6fCg.png)

You can also make the dialogue play a background music with it too!
Instead of using `dialogueIntro(dialogue);` you just have to use `dialogueIntro(dialogue, 'your-music-name-here');`, make sure you file is inside the `music` folder of your week's loaded folder!