package editors;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.system.FlxSound;
import flixel.addons.ui.FlxInputText;
import flixel.addons.ui.FlxUI9SliceSprite;
import flixel.addons.ui.FlxUI;
import flixel.addons.ui.FlxUICheckBox;
import flixel.addons.ui.FlxUIInputText;
import flixel.addons.ui.FlxUINumericStepper;
import flixel.addons.ui.FlxUITabMenu;
import flixel.ui.FlxButton;
import openfl.net.FileReference;
import openfl.events.Event;
import openfl.events.IOErrorEvent;
import flash.net.FileFilter;
import haxe.Json;
import DialogueBoxPsych;
import lime.system.Clipboard;
#if sys
import sys.io.File;
#end

using StringTools;

class ScriptEditorState extends MusicBeatState
{

    var UI_box:FlxUITabMenu;

    private var camMenu:FlxCamera;

    function addEditorBox() {
        var tabs = [
            {name: 'Script', label: 'Script'},
            {name: 'Util', label: 'Util'},
        ];

        UI_box = new FlxUITabMenu(null, tabs, true);
        UI_box.resize(350, FlxG.height - 100);
        UI_box.x = FlxG.width - (UI_box.width + 50);
        UI_box.screenCenter(Y);
        UI_box.scrollFactor.set();

        addScriptUI();
        addUtilUI();

        UI_box.selected_tab_id = 'Script';

        add(UI_box);

        trace(UI_box.numTabs);
        trace(UI_box.selected_tab);
    }

    function addScriptUI() {

        var tab_group = new FlxUI(null, UI_box);
        tab_group.name = "Script";

        UI_box.addGroup(tab_group);

    }

    function addUtilUI() {

        var tab_group = new FlxUI(null, UI_box);
        tab_group.name = "Util";

        UI_box.addGroup(tab_group);

    }
    
    override function create()
    {
        camMenu = new FlxCamera();
		camMenu.bgColor.alpha = 0;

        FlxG.cameras.add(camMenu);
        FlxCamera.defaultCameras = [camMenu];

        transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

        FlxG.camera.bgColor = FlxColor.BLACK;

        FlxG.mouse.visible = true;

        #if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("Script Editor", null);
		#end

        addEditorBox();

        super.create();
    }

    override function update(elapsed:Float)
    {
        if (controls.BACK)
        {
            MusicBeatState.switchState(new MasterEditorMenu());
        }

        if (controls.ACCEPT)
        {
            trace('lololollolololol');
        }

        if (FlxG.keys.justPressed.TAB)
        {
            if (FlxG.keys.pressed.SHIFT)
            {
                if (UI_box.selected_tab == 0)
                {
                    UI_box.selected_tab = 1;
                }
                else
                {
                    UI_box.selected_tab -= 1;
                }
            }
            else
            {
                if (UI_box.selected_tab == 1)
                {
                    UI_box.selected_tab = 0;
                }
                else
                {
                    UI_box.selected_tab += 1;
                }
            }
        }
    }

}