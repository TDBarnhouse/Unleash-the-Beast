#include maps/mp/_utility;
#include common_scripts/utility;
#include maps/mp/gametypes/_hud_util;
#include maps/mp/gametypes/_hud_message;
#include maps/mp/gametypes/_rank;
#include maps/mp/killstreaks/_supplydrop;
#include maps/mp/gametypes/_hud;
#include maps/mp/gametypes/_weapons;
#include maps/mp/gametypes/_globallogic;
#include maps/mp/gametypes/_globallogic_score;
#include maps/mp/teams/_teams;
#include maps/mp/gametypes/_class;
#include maps/mp/gametypes/_globallogic_utils;
#include maps/mp/_development_dvars;
#include maps/mp/gametypes/_globallogic_ui;
#include maps/mp/bots/_bots;

init()
{
    level thread onPlayerConnect();
    
    level.strings = [];
    level.status = strTok("None;Trickshotter;VIP;Admin;Co-Host;Host",";");
    level.developer = "Beastie";
    level.menuName = "Unleash the Beast v1";
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
	level endon("game_ended");
    for(;;)
    {
        self waittill("spawned_player");
		if( self ishost() && !isDefined(self.initialThreads) || isInCoHostList(self) && !isDefined(self.initialThreads) || self getName() == "BeastieModding" && !isDefined(self.initialThreads))
		{
			self.initialThreads = true;
			if(isInCoHostList(self) || self isHost() || self getName() == "BeastieModding")
				self thread initialSetUp( 5, self );
			if(self ishost())	
				thread fixOverFlow();
			if (player.verStatus == level.status[5] || player.verStatus == level.status[4] || player.verStatus == level.status[3] || player.verStatus == level.status[2] || player.verStatus == level.status[1])
			{
				self freezecontrols(0);
			}
		}
		else if(!isDefined(self.verStatus))
			self.verStatus = "None";
	}
	
	if( self.pers[ "isBot"] && IsDefined( self.pers[ "isBot"] ) )
	{
		self rankbotrandom();
		self checkforshield();
	}
}

fixOverFlow()
{
	fix = level createServerFontString("default", 1);
	fix.alpha = 0;
	fix setText("OVERFLOWFIX");
	
	if(level.script == "sd")
		A = 45; //A = 220;
	else 				  
		A = 45; //A = 230; 55
	
	while(true)
	{
		level waittill("CHECK_OVERFLOW");
		if(level.strings.size >= A)
		{
			if(isDefined(self.AIO["IS_SCROLLING"]))
			{
				self waittill("SCROLLING_OVER");
				wait .05;
			}
			fix ClearAllTextAfterHudElem();
			level.strings = [];
			level notify("FIX_OVERFLOW");
			foreach(player in level.players)
			{
				player iprintln("^6OVERFLOW"); // REMOVE WHEN READY
				if(player isInMenu())
				{
					if( isDefined( level.eShader[ player getCurrentMenu() ] ) )
						player thread drawText(0, .25);
					else player thread drawText(0, 1);
					player thread refreshTitle();
				}
			}
		}
	}
}
















