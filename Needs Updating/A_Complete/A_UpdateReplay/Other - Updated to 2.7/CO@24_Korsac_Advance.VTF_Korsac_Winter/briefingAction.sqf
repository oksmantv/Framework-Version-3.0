brief addAction ["<t color='#FFFF00' size='1.5'>Play Briefing</t>", {
    brief remoteExec ["removeAllActions",0];;
    [radio_1,["BLU_Briefing",300,1,1]] remoteExec ["say3D",0];

    brief setObjectTextureGlobal [0,"#(rgb,512,512,3)text(1,1,""PuristaLight"",0.3,""#0000007f"",""#00ff00"",""Briefing\nPlaying..."")"];

    null = [] spawn {
        sleep 10;
        true remoteExec ["openMap",0];
        sleep 215;
        brief setObjectTextureGlobal [0,"#(rgb,512,512,3)text(1,1,""PuristaLight"",0.3,""#0000007f"",""#ff0000"",""Briefing\nEnded"")"];
    }
},"",1];
