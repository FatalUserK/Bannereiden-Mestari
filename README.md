Welcome! --Dec. 5th 2024

Ever wondered how Extol makes those sick banners for the Noita discord?

Well now you've found it.



Making a banner:

Use noita_dev.exe and run "logo mod" (Most other mods should be compatible if you so desire)

F5 to enable debug mode. Enter/WASD to fly around. F8 to remove the Fog Of War.

Fly to the trailer altar. It is a few chunks down and one to the right of the Snowy Depth HM. (~450x 3800y)

Center the camera and press F12 to enable "Trailer Recording Mode" This locks the camera, and clears more FOW (F8 again to restore the shaders/FOW)

Protip: You can use Enter/WASD to move the camera while in this mode. (It doesn't have to be perfect)

MAKE SURE YOUR GIF RECORDER IS WORKING BEFORE THE NEXT STEP!

Kicking near the altar will activate the script we have overwritten in the mod files.

Quickly! Start your act! Make it interesting!

The final step. Press F11 to record your banner. (USE 320x180 RESOLUTION)

Make sure you center the gif to make up for any small errors, and presto!

The files:

Make sure you have the proper mod setup.

It should be "Noita/mods/logo_mod/mod.xml"

"logo_mod/files" will contain most of the assests you/I have made. Keep things as organized in here as possible. You'll thank yourself later.

Most of the assest in here are general images/props I have made.

"files/logo_emitter.png" is what I use to make rising sparks that glow. 

"files/sacred_barrel.xml" is an empty entity with the tag that activates the trailer altar. (This is spawned via "files/scripts/kick.lua")



"logo_mod/data" will contain the new altar scripts, enemies we have modified (likely to not attack us), modified altar/altar torches, etc.

"data/entities" should be fairly self explanatory. This is all the overwritten entities. Mostly focus on the animals/altar. Possibly make backups of creations you've liked.

"data/scripts/buildings" is the how the magic happens. There are a few example scripts for the older banners. WARNING SOME OF THESE MIGHT CONFLICT WITH THE NEWER ENTITIES.

Questions regarding how to make an async function should be directed to me/the modding community.

Thanks for reading all of that!
:p
