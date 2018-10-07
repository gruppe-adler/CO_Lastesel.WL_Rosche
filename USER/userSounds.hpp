/*
*   Hier können eigene Sounds eingebunden werden.
*   Ist in CfgSounds included.
*/

class hymn
{
	// how the sound is referred to in the editor (e.g. trigger effects)
	name = "hymn";

	// filename, volume, pitch, distance (optional)
	sound[] = { "data\hymn.ogg", 1, 1, 1000 };

	// subtitle delay in seconds, subtitle text
	titles[] = { 0, "" };
};