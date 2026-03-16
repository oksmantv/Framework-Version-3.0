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
"Syrian forces have taken over control of a local <marker name='Factory'>factory</marker>.<br/>
This specific factory was used to create biological weapons, but has since been dismantled by NATO.<br/>
<br/>
We suspect the Syrian army might try to restart production. Use any means necessary to clear out enemies while valuing your life more than some structures.<br/><br/>
After clearing out the factory, head up to the friendly position in <marker name='Friendly'>Negades</marker>, and check the shore line along Agios Konstantinos."]];

player createDiaryRecord ["Diary",["Additional Intel",
"Our friendly forces in <marker name='Friendly'>Negades</marker> have seen the following material according to reports:<br/>
Multiple T34<br/>
Multiple BMP1<br/>
Multiple BMP2<br/>
<br/>
It is unknown what vehicles exactly you'll be encountering during your mission. Stay frosty and call in resupply via your leaders when needed and we'll airdrop it in."]];

player createDiaryRecord ["Diary",["Rules of Engagement",
"Hold fire until fired upon. Avoid civilian casualties. Prioritize lives over structures."]];

player createDiaryRecord ["Diary",["Current Situation",
"NATO forces at <marker name='Friendly'>Negades</marker> are reporting increased enemy activity near the shore line of the town Agios Konstantinos. It is suspected that the Syrian army is creating a spearhead from the <marker name='Resistance'>North-West</marker>."]];