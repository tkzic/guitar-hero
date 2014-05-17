////////////////////////////////////////////////////////
// FRETBUZZ v0.2
// software for Max/MSP and Guitar Hero controllers
// authored by O. Grace of The Guitar Zeros
////////////////////////////////////////////////////////


Hello, fellow Guitar Hero freakazoid.  Thanks for downloading FretBuzz..... Hope you dig it!
 - Owen



This software is in super-alpha-mode, whatever that means. It just sounds cool to say that, okay? Really, though, to use it you will probably need to download 2 other software packages from the internets. They're free though! Scroll down for the installation details.

NOTE:
	FRETBUZZ has been written and tested on a laptop w/ Windows XP - while Max/MSP is available for OSX, XP and Vista, I cannot say it definitely works on all platforms. If you have OSX or Vista and want to give it a whirl, please do and tell us what you discover! If you can help me find bugs, I'll help squash them.


USING THIS SOFTWARE:
	1. Get Max/MSP 4.6.3 software here: http://www.cycling74.com/downloads/maxmsp. The Runtime version is freely available for OSX and Windows, which allows you to run Max/MSP programs, but not create/edit them.
	2. Download PeRColate, which is a set of additional synthesis objects for Max/MSP. Get it HERE: http://www.music.columbia.edu/PeRColate/. Windows PeRColate also available here: http://www.theguitarzeros.com/fretbuzz/PeRColate-v0.9b5.zip.
	3. Install Max/MSP if you haven't done so already. Then install PeRColate, following the instructions included with it. The process involves copying the PeRColate library files into particular directories within the Max/MSP application folder. If you find the readme file within the PeRColate zip a little tough to follow, try just copying the PeRColate folder of library files into your C:\Program Files\Cycling '74\MaxMSP 4.6\Cycling '74\externals\ folder. The key part is the /externals/ folder.
	4. Unzip the FRETBUZZ zip file. You can unzip it anywhere you like on your computer. In other words, you do not have to unzip it into your Max/MSP application folder. Instead, you can simply unzip it to your desktop or something.
	5. You're getting close.  Plug your GH controller into your computer.  Xbox360 version goes right in a USB port, ding.  (OSX users, try this driver: http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller/OsxDriver.  Windows users, no driver needed!)  PS2 version requires an additional PSX-to-USB adapter. See THE ZERO GUIDE online for details. (http://www.theguitarzeros.com/use_guitar_hero_controller_as_an_instrument.php)
	6. Plug in your external audio interface, if you have one...
	7. Now launch Max/MSP software!
	8. From within Max/MSP, open the file buzz_360 (or buzz_ps2, depending on your controller(s)).
	9. You're in!  Now click the HELP MEEE button at the bottom right of the program... that'll get you going with your controller configuration and instructions for using the software!!  Party time!


KNOWN ISSUES WITH CURRENT VERSION:
	1. The PS2 controller whammy bar does NOT get detected via USB, unless you are using the "Super Dual Box Pro PS2-to-USB adapter". Thanks, Phillip for that discovery! If you have that adaptor, go ahead and try the xbox360 version of Fretbuzz, see what happens. Your controller might explode tho. If it does, be smart and extinguish the fire before your couch goes up in flames.
	2. The PS2 star power tilt sensor is really yucky. It is marginal at best. I have designed no application for it thus far, and don't plan on it. It's just too unreliable and difficult to control.
	3. On the flipside, the Xbox360 controller's whammy AND 2 axes of tilt sensor goodness are indeed detected via USB! The new version (v0.1) lets you configure the axes and the whammy for added control of some of the sounds, sick!


COMING SOON:
	1. Master pitch/tuning controlification.
	2. Key changing action using combinations of the start button and other buttons.
	3. Simple sequencer for recording/layering bass and guitar parts and playing em back.
	4. More sounds, including "screaming wizard" and "blaze attack face", patent pending.

VERSION HISTORY:
	*  v0.2 - 2007/7/25 - new version for xbox360 controller owners. Mac OSX fix + new fat bass sound oooo! try it!
	*  v0.1 - 2007/7/21 - new version for xbox360 controller owners. Did somebody say WHAMMY BAR??? or wait i misheard you, did you say TILT SENSOR ACTION?? a coupla new sounds in this verion too. Sorry PS2 dudes and dudettes, you gotta use version zero, still.
	* version 0 - 2007/6/3 - the first released version. some of the code is a mess. some is tidy. enjoy it! make some music, get creative! email us with ideas for improvement, if you've got em....(us@theguitarzeros.com)



FRETBUZZ software is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.

Hey programmers, feel free to modify this work, add to it, tweak it - do whatever you want to it. You'll need the full version of Max/MSP to edit the program (not just the Runtime version). Let's build upon it collectively and make it really rock! I have placed the work under a Creative Commons License, which basically states that you can do what you like with it, but you can't sell it or any permutations of it. Changes are encouraged, but please keep the README.txt file with all subsequent distributions. And consider adding your own additional read-me file or something that explains your modifications. This software shall remain free and open-source, if I can help it. If we get smart we can really build it in a modular way such that new synthesis components can be added with ease. Perhaps a superior Max/MSP programmer can help design and develop that modularity?! Imagine a growing library of Guitar Hero controller "sound banks" that can be downloaded and plugged into the application with ease. That's what this FretBuzz project will hopefully become over time with the added support from guitar 'heroes' and programmers across the lands....