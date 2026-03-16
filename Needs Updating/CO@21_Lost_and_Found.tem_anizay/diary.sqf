if (!hasInterface) exitWith {};
waitUntil {!isNull player};

/*

For howto information: https://www.youtube.com/watch?v=XJlCAEYs2uo

NOTE: Images should be max 360x360 pixels!

modifiers, links, and font options
<marker name='marker_name'>text with link</marker>
<img image='Image file name jpeg or paa' />
<font color='#FF0000' size='14' face='vbs2_digital'>Text you want in this font</font>
<br/> New Line

http://www.w3schools.com/colors/colors_picker.asp

https://community.bistudio.com/wikidata/images/archive/0/0e/20140217182059%21Arma3Fonts.png
*/

player createDiaryRecord ["Diary",["Objectives",
"Clear the road from <marker name='marker_3'>HQ</marker> location to the town of <marker name='marker_6'>Janur</marker>.<br/><br/>Actively engage and destroy any and all hostile targets and targets of opportunity.<br/><br/>Expect random patrols along the route on foot, and mechanized.<br/>"]];

player createDiaryRecord ["Diary",["Additional Intel",
"Reinserts can be done via MHQ.<br/>A minefield was reported <marker name='marker_7'>here</marker>."]];

player createDiaryRecord ["Diary",["Current Situation",
"Christmas is coming, and according to the American capitalism we should make sure that Santa Claus is able to make sure that presents can be delivered to people in Anizay.<br/>In reality this is a marketing stunt as you all understand. Santa Claus doesn't need our help anyway.<br/><br/><br/>Command has asked us to clear all enemy positions along the road marked on the map and has provided us with multiple Warriors and 2 different types of support vehicles.<br/>There are no civilians in the towns, so we don't have to worry about warcrimes.<br/>Besides that, this promotional crap wouldn't look good on our vehicles anyways. <br/><br/>Good luck gents.<br/><br/>Oh command told us to watch out for mines, roadblocks, BTR's and multiple platoon sized squads.<br/>But I'm sure you're all capable of making sure that our PR department can be proud. If not guess we'll be getting nothing for Christmas."]];