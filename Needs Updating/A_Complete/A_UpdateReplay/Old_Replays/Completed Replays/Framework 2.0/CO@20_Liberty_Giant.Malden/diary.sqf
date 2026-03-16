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
"<font color='#FF0000' size='14'>Main Objective</font><br/>
<br/>
You're main objective is to secure the Priest to perform an exorcism on one of the locals. Normally we would have flown in our own exorcists, but the refugees are overrunning the base with their pets.<br/><br/>
This wouldn't be such an issue if they had mostly cats, but they are brining dogs, goats and chickens. We offered to slaughter some of them to boost morale, but some of the refugees went nuts at that proposal.<br/><br/>
Because this was suggested, a few of the more radical locals have decided to try and curse us. Luckily it backfired but as we are the GOOD guys, we need to provide medical and mental assistance.<br/>
Unfortunate for us, this doesn't include giving someone an extra hole in the forehead, so instead we are obliged to play the exorcist game as we need te local support.<br/><br/>
Your first objective is to get the exorcist ASAP and get him to perform his 'miracle' by delivering him safely back into the cordoned off area at base.<br/><br/>
Your second objective is to get the medical professional. There is a local influenza going around (doesn't seem to be COVID), and the local doctor will be able to help.<br/><br/>"]];

player createDiaryRecord ["Diary",["Additional Intel",
"You can expect civilians in the areas you are entering. So check your fire soldier.<br/><br/>
We've heard some ghost stories about the priest, he's world famous for being a bit eccentric, and he likes to showcase his skills. But he is not god, so he can be killed. Make sure to protect him well."]];

player createDiaryRecord ["Diary",["Rules of Engagement",
"Shoot the bad guys. Not our friendly over superstitious locals plz."]];

player createDiaryRecord ["Diary",["Current Situation",
"We've found out trough the locals that there is a minefield and checkpoint. We've marked this on the map for your convenience."]];