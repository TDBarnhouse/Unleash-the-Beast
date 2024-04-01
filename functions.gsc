needscode()
{
self iprintln("^1Error^7: Code still needs to be added.");
}

// Host Only! :)

forcehost()
{
	if(!(self.fhost))
	{
		self.fhost = 1;
		setdvar("party_connectToOthers", "0");
		setdvar("partyMigrate_disabled", "1");
		setdvar("party_mergingEnabled", "0");
		self iprintln("Force Host has been ^2enabled^7.");
	}
	else
	{
		self.fhost = 0;
		setdvar("party_connectToOthers", "1");
		setdvar("partyMigrate_disabled", "0");
		setdvar("party_mergingEnabled", "1");
		self iprintln("Force Host has been ^1disabled^7.");
	}
}

fastrestart()
{
	i = 5;
	while( i > 0 )
	{
		iprintln( "The game is restarting in ^2" + i + "^7." );
		wait 1;
		i--;
	}
	map_restart(0);
}

godmode()
{
	if( self.god == 0 )
	{
		self enableinvulnerability();
		self iprintln("God Mode has been ^2enabled^7.");
		self.god = 1;
	}
	else
	{
		self disableinvulnerability();
		self iprintln( "God Mode has been ^1disabled^7." );
		self.god = 0;
	}

}

// Aimbots
/*
toggleequipaimbot()
{
	if( !(self.equipaim) )
	{
		self.equipaim = 1;
		self iprintln( "Equipment Crosshair Aimbot ^2Enabled" );
		self iprintln( "Works On The Latest Equipment You Deploy" );
		self thread waitforequip();
		self thread equipaimbot();
	}
	else
	{
		self.equipaim = 0;
		self iprintln( "Equipment Crosshair Aimbot ^1Disabled" );
		self notify( "stop_equip_aimbot" );
	}

}

waitforequip()
{
	level endon( "game_ended" );
	self endon( "stop_equip_aimbot" );
	for(;;)
	{
	self waittill( "grenade_fire", grenade );
	self.equiptarget = grenade;
	}

}

equipaimbot()
{
	level endon( "game_ended" );
	self endon( "stop_equip_aimbot" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	if( IsDefined( self.equiptarget ) )
	{
		if( isrealisticequip( self.equiptarget ) )
		{
			self.equiptarget detonate();
			if( self.trail )
			{
				magicbullet( self getcurrentweapon(), self gettagorigin( "tag_weapon_right" ) + anglestoforward( self getplayerangles() ) * 75, self.equiptarget.origin, self );
			}
			self updatedamagefeedback();
		}
	}
	}

}
*/
toggleaimbotz()

{

	if( !(self.aimz) )

	{

		self.aimz = 1;

		self thread crosshairEB();

		self iprintln( "Advanced Crosshair Aimbot ^2Enabled" );

	}

	else

	{

		self.aimz = 0;

		self notify( "stop_aim" );

		self iprintln( "Advanced Crosshair Aimbot ^1Disabled" );

	}



}



crosshairEB()

{

self endon( "disconnect" );

self endon( "stop_aim" );

	for(;;)

	{

		aimAt = undefined;

		self waittill ("weapon_fired");

		if(!(self isonground()))

        {

		foreach(player in level.players)

		{

			if(isOnCrosshair(player))

			{



				if((player == self) || (!isAlive(player)) || (level.teamBased && self.pers["team"] == player.pers["team"]))

				continue;

				if(isDefined(aimAt))

				{

					if(closer(self getTagOrigin("pelvis"), player getTagOrigin("pelvis"), aimAt getTagOrigin("pelvis")))

					aimAt = player;

				}

				else

					aimAt = player;

			}

		}

		weaponclass = getweaponclass(self getCurrentWeapon());

		if (weaponclass == "weapon_sniper")

		{   

			x = randomInt(10);

			if(x==1)

				aimAt thread [[level.callbackPlayerDamage]]( self, self, 124129412, 8, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "head", 0, 0 );

			else

				aimAt thread [[level.callbackPlayerDamage]]( self, self, 124129412, 8, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0,0,0), (0,0,0), "spinelower", 0, 0 );

		}

	}

	wait 0.05;

}

}

isOnCrosshair(victim) //Credits to @BillinAssDoctor

{

	currAngles = self getPlayerAngles();

	facing = vectorToAngles(victim getTagOrigin("j_spinelower") - self getTagOrigin("j_spinelower"));

	aimDist = length(facing - currAngles);

	if(aimDist < 10)

		return true;

	else

		return false;

}

// Weapon Mods
	// Weapons
	
g_weapon( weapon ) // Fix Code
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weapon );
	self switchtoweapon( weapon );
	self givemaxammo( weapon );
	self iprintln( "You have received the ^2" + weapon + "^7.");

}

// Lobby Settings
	// Bot Settings

rankbotrandom()
{
	num = randomintrange( 0, 11 );
	rank = randomintrange( 0, 56 );
	player setrank( rank, num );

}	
	
checkforshield()
{
	if( player hasweapon( "riotshield_mp" ) )
	{
		player takeweapon( "riotshield_mp" );
		player givebotrandomweapon();
	}

}

givebotrandomweapon()
{
	weaparray = returnmyweaponsarray();
	randomweapon = weaparray[ randomint( weaparray.size )];
	randomcamo = randomintrange( 0, 46 );
	player giveweapon( randomweapon, 0, randomcamo, 0, 0, 0, 0);
	player switchtoweapon( randomweapon );
	player givemaxammo( randomweapon );

}

spawnbots( amount )
{
	i = 0;
	while( i < amount )
	{
		self thread maps\mp\bots\_bot::spawn_bot( "autoassign" );
		i++;
	}
	if (amount == 1)
	{
	self iprintln( "You have spawned in ^2" + amount + "^7 bot.");
	}
	else
	{
	self iprintln( "You have spawned in ^2" + amount + "^7 bots.");
	}
}

teleportbotstocrosshair()
{
	self iprintln( "You have teleported all the bots to your crosshair.");
	foreach( player in level.players )
	{
		if( player.pers[ "isBot"] && IsDefined( player.pers[ "isBot"] ) )
		{
			player setorigin( bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 0, self )[ "position"] );
		}
	}

}

makebotswatch()
{
	self iprintln( "You have made all bots look at you.");
	foreach( player in level.players )
	{
		if( player.pers[ "isBot"] && IsDefined( player.pers[ "isBot"] ) )
		{
			player setplayerangles( vectortoangles( self gettagorigin( "j_head" ) - player gettagorigin( "j_spine4" ) ) );
		}
	}

}

freezebots()
{
	foreach(player in level.players)

	if(isDefined(player.pers["isBot"])&& player.pers["isBot"])
		if(player.Frozen == "^1unfrozen^7.") {
			player.Frozen = "^2frozen^7.";
			player freezeControls(true);
		} else {
			player.Frozen = "^1unfrozen^7.";
			player freezeControls(false);
		}
		self iprintln("All bots have been " + player.Frozen);
}

kickbots()
{
	self iprintln( "All bots have been kicked.");
	foreach( player in level.players )
	{
		if(isDefined(player.pers["isBot"]) && player.pers["isBot"])
		{
			kick(player getEntityNumber(), "EXE_PLAYERKICKED");
		}
	}

}

	// Maps

changemap( mapname )
{
	self thread closeMenu();
	i = 5;
	while( i > 0 )
	{
		iprintln( "The map is changing to ^2" + mapname + "^7 in ^2" + i + "^7." );
		wait 1;
		i--;
	}
	wait 0.5;
	setdvar( "ls_mapname", mapname );
	setdvar( "mapname", mapname );
	setdvar( "party_mapname", mapname );
	setdvar( "ui_mapname", mapname );
	setdvar( "ui_currentMap", mapname );
	setdvar( "ui_mapname", mapname );
	setdvar( "ui_preview_map", mapname );
	setdvar( "ui_showmap", mapname );
	map( mapname );
}

// Messages

typewritter(themessage)
{
	foreach(player in level.players)
	{
		player thread hintmessage(themessage);
	}
}

// [Trickshotter] Verification

ffalast()
{
	if(getdvar("g_gametype") == "dm")
	{
		self iprintlnbold("You are on last.");
		self.pointstowin = 29;
		self.pers["pointstowin"] = 29;
		self.score = 2900;
		self.pers["score"] = 2900;
		self.kills = 29;
		self.deaths = 19;
		self.headshots = 6;
		self.pers["kills"] = 29;
		self.pers["deaths"] = 19;
		self.pers["headshots"] = 6;
	}
	else
	{
		self iprintln("^1Error^7: The gamemode is not Free-For-All.");
	}
}

saveandload()
{
	if(!(self.snl))
	{
		self.snl = 1;
		self iprintln("Save & Load has been ^2enabled^7.");
		self iprintln("Press [{+actionslot 4}] and [{+stance}] to save position.");
		self iprintln("Press [{+actionslot 4}] and [{+gostand}] to load position.");
		self thread loopsaveandload();
	}
	else
	{
		self.snl = 0;
		self iprintln("Save & Load has been ^1disabled^7.");
		self notify("snl_stop");
	}

}

loopsaveandload()
{
	self endon("disconnect");
	self endon("snl_stop");
	load = 0;
	for(;;)
	{
		if(self stanceButtonPressed() && self actionslotfourbuttonpressed())
		{
			self.o = self.origin;
			self.a = self.angles;
			load = 1;
			self iprintln("Your location has been ^2saved^7.");
			wait 2;
		}
		if(load && self jumpbuttonpressed() && self actionslotfourbuttonpressed())
		{
			self setplayerangles(self.a);
			self setorigin(self.o);
			self iprintln("Your location has been ^2loaded^7.");
			wait 2;
		}
		wait 0.05;
	}
}

changeclass()
{
	self thread closeMenu();
	self endon("disconnect");
	self endon("death");
	self beginclasschoice();
	for(;;)
	{	
		if(self.pers["changed_class"])
		{
			self giveloadout(self.team, self.class);
			self iprintln("Your class has been changed.");
		}
		wait 0.05;
	}
}

tsperks()
{
	self setperk("specialty_fallheight");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_stunprotection");
	self iprintln("You have received Trickshot Perks.");
}

fakebullettrail()
{
	if(self.trail)
	{
		self.trail = 0;
		self iprintln("Fake Bullet Trail has been ^2enabled^7.");
	}
	else
	{
		self.trail = 1;
		self iprintln("Fake Bullet Trail has been ^1disabled^7.");
	}
}

returnmyweaponsarray()
{
	level.myweapons[0] = "mp7_mp";
	level.myweapons[1] = "pdw57_mp";
	level.myweapons[2] = "vector_mp";
	level.myweapons[3] = "insas_mp";
	level.myweapons[4] = "qcw05_mp";
	level.myweapons[5] = "evoskorpion_mp";
	level.myweapons[6] = "peacekeeper_mp";
	level.myweapons[7] = "tar21_mp";
	level.myweapons[8] = "type95_mp";
	level.myweapons[9] = "sig556_mp";
	level.myweapons[10] = "sa58_mp";
	level.myweapons[11] = "hk416_mp";
	level.myweapons[12] = "scar_mp";
	level.myweapons[13] = "saritch_mp";
	level.myweapons[14] = "xm8_mp";
	level.myweapons[15] = "an94_mp";
	level.myweapons[16] = "870mcs_mp";
	level.myweapons[17] = "saiga12_mp";
	level.myweapons[18] = "ksg_mp";
	level.myweapons[19] = "srm1216_mp";
	level.myweapons[20] = "mk48_mp";
	level.myweapons[21] = "qbb95_mp";
	level.myweapons[22] = "lsat_mp";
	level.myweapons[23] = "hamr_mp";
	level.myweapons[24] = "svu_mp";
	level.myweapons[25] = "dsr50_mp";
	level.myweapons[26] = "ballista_mp";
	level.myweapons[27] = "as50_mp";
	level.myweapons[28] = "fiveseven_mp";
	level.myweapons[29] = "fnp45_mp";
	level.myweapons[30] = "beretta93r_mp";
	level.myweapons[31] = "judge_mp";
	level.myweapons[32] = "kard_mp";
	level.myweapons[33] = "smaw_mp";
	level.myweapons[34] = "usrpg_mp";
	level.myweapons[35] = "fhj18_mp";
	level.myweapons[36] = "riotshield_mp";
	level.myweapons[37] = "crossbow_mp";
	level.myweapons[38] = "knife_ballistic_mp";
	level.myweapons[39] = "knife_held_mp";
	return level.myweapons;
}

droprandomcan()
{
	weaparray = returnmyweaponsarray();
	randomweapon = weaparray[randomint(weaparray.size)];
	if(self hasweapon(randomweapon))
	{
		self iprintln("^Error^7: You cannot drop a weapon you own.");
	}
	else
	{
		self giveweapon(randomweapon);
		wait 0.05;
		self dropitem(randomweapon);
		self iprintln("A weapon has been dropped.");
	}

}

toggleinfequipment()
{
	if(self.infequipment == 0)
	{
		self.infequipment = 1;
		self iprintln("Infinite Equipment has been ^2enabled^7.");
		self thread infequipment();
	}
	else
	{
		self.infequipment = 0;
		self iprintln("Infinite Equipment has been ^1disabled^7.");
		self notify("stop_infequipment");
	}
}

infequipment()
{
	self endon("stop_infequipment");
	for(;;)
	{
	wait 0.1;
	currentoffhand = self getcurrentoffhand();
		if(currentoffhand != "none")
		{
			self givemaxammo(currentoffhand);
		}
	}
}

maxammo()
{
	prim = self getcurrentweapon();
	sec = self getcurrentoffhand();
	self givemaxammo(prim);
	self givemaxammo(sec);
	self iprintln("Max Ammo has been given.");
}
	
togglefrogjump()
{
	if(!(self.frog))
	{
		self.frog = 1;
		self iprintln("Frog Jump has been ^2enabled^7.");
		self iprintln("Press [{+gostand}] to use Frog Jump.");
		self thread loopfrogjump();
	}
	else
	{
		self.frog = 0;
		self iprintln("Frog Jump has been ^1disabled^7.");
		self notify("stop_frog" );
	}

}

loopfrogjump()
{
	self endon("disconnect");
	self endon("stop_frog");
	while(1)
	{
		if(self jumpbuttonpressed())
		{
			forward = anglestoforward(self getplayerangles());
			self setorigin(self.origin + (0, 0, 5));
			i = 0;
			while(i < 5)
			{
				self setvelocity((forward[0] * 1000, forward[1] * 1000, 300));
				wait 0.01;
				i++;
			}
			wait 1;
		}
		wait 0.05;
	}
}	


customteleport()
{
	self thread closeMenu();
	self iprintln( "Choose your location." );
	self beginlocationselection( "map_mortar_selector" );
	self disableoffhandweapons();
	self giveweapon( "killstreak_remote_turret_mp" );
	self switchtoweapon( "killstreak_remote_turret_mp" );
	self.selectinglocation = 1;
	self waittill( "confirm_location", location );
	newlocation = bullettrace( location + ( 0, 0, 100000 ), location, 0, self )[ "position"];
	self setorigin( newlocation );
	self endlocationselection();
	self enableoffhandweapons();
	self switchtoweapon( self getlastweapon() );
	self.selectinglocation = undefined;
	self iprintln( "You have been teleported to your chosen location." );
	return newlocation;

}

teleporttocrosshair()
{
	self setorigin( bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 0, self )[ "position"] );
	self iprintln( "You have been teleported to your crosshair." );

}

togglecoordinates()
{
	if( !(self.printinfo) )
	{
		self.printinfo = 1;
		self iprintln( "Custom Location Tool Info has been ^2enabled^7." );
		self thread loopinfo();
	}
	else
	{
		self.printinfo = 0;
		self notify( "stop_info" );
		self iprintln( "Custom Location Tool Info has been ^1disabled^7." );
	}

}

loopinfo()
{
	self endon( "disconnect" );
	self endon( "stop_info" );
	wait 1;
	for(;;)
	{
	self iprintlnbold( "^1x ^7=^1 " + ( self.origin[ 0] + ( "^7, ^2y ^7=^2 " + ( self.origin[ 1] + ( "^7, ^5z ^7=^5 " + self.origin[ 2] ) ) ) ) );
	currentvelocity = self getvelocity();
	self iprintln( "Velocity: ^2" + currentvelocity );
	currentangles = self getplayerangles();
	self iprintln( "Angles: ^2" + currentangles );
	currentweapon = self getcurrentweapon();
	self iprintln( "Weapon: ^2" + currentweapon );
	currentmap = getdvar( "mapname" );
	self iprintln( "Map: ^2" + currentmap );
	wait 2;
	}

}

createplatform(pos)
{
	self thread closeMenu();
	self iprintln( "A platform at the location has been created." );
	location = pos;
	while (isDefined(self.spawnedcrate[0][0]))
	{
		i = -3;
		while (i < 3)
		{
			d = -3;
			while (d < 3)
			{
				self.spawnedcrate[i][d] delete();
				d++;
			}
			i++;
		}
	}
	startpos = location + (0, 0, -15);
	i = -3;
	while (i < 3)
	{
		d = -3;
		while (d < 3)
		{
			self.spawnedcrate[i][d] = spawn("script_model", startpos + (d * 40, i * 70, 0));
			self.spawnedcrate[i][d] setmodel("t6_wpn_supply_drop_axis");
			d++;
		}
		i++;
	}
}

teletocoords( pos, posname )
{
	self setorigin( pos );
	self iprintln( "You have been teleported to ^2" + posname + "^7." );

}

moninacclass()
{
	self takeallweapons();
	self setperk("specialty_fallheight");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_stunprotection");
	self giveweapon("sticky_grenade_mp");
	self giveweapon("proximity_grenade_mp");
	self giveweapon("proximity_grenade_mp");
	self giveweapon("knife_mp", 0, 29, 0, 0, 0, 0);
	self giveweapon("dsr50_mp+fmj+steadyaim", 0, 29, 0, 0, 0, 0);
	self giveweapon("870mcs_mp", 0, 29, 0, 0, 0, 0);
	self givemaxammo("dsr50_mp+fmj+steadyaim");
	self givemaxammo("870mcs_mp");
	self givemaxammo("proximity_grenade_mp");
	self iprintln("Moni Nac Class received.");
}

hybridnacclass()
{
	self takeallweapons();
	self setperk("specialty_fallheight");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_stunprotection");
	self giveweapon("sticky_grenade_mp");
	self giveweapon("proximity_grenade_mp");
	self giveweapon("knife_mp", 0, 43, 0, 0, 0, 0);
	self giveweapon("dsr50_mp+fmj+steadyaim", 0, 43, 0, 0, 0, 0);
	self giveweapon("hk416_mp+dualoptic+fastads", 0, 43, 0, 0, 0, 0);
	self givemaxammo("dsr50_mp+fmj+steadyaim");
	self givemaxammo("hk416_mp+dualoptic+fastads");
	self givemaxammo("proximity_grenade_mp");
	self iprintln("Hybrid Nac Class received.");
}

tittynacclass()
{
	self takeallweapons();
	self setperk("specialty_fallheight");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_stunprotection");
	self giveweapon("claymore_mp");
	self giveweapon("proximity_grenade_mp");
	self giveweapon("knife_mp", 0, 44, 0, 0, 0, 0);
	self giveweapon("dsr50_mp+fmj+steadyaim", 0, 44, 0, 0, 0, 0);
	self giveweapon("ballista_mp", 0, 44, 0, 0, 0, 0);
	self givemaxammo("dsr50_mp+fmj+steadyaim");
	self givemaxammo("ballista_mp");
	self givemaxammo("proximity_grenade_mp");
	self iprintln("Titty Nac Class received.");
}

rpgnacclass()
{
	self takeallweapons();
	self setperk("specialty_fallheight");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_stunprotection");
	self giveweapon("sticky_grenade_mp");
	self giveweapon("proximity_grenade_mp");
	self giveweapon("knife_mp", 0, 32, 0, 0, 0, 0);
	self giveweapon("dsr50_mp+fmj+steadyaim", 0, 32, 0, 0, 0, 0);
	self giveweapon("usrpg_mp", 0, 32, 0, 0, 0, 0);
	self givemaxammo("ballista_mp+fmj+steadyaim");
	self givemaxammo("usrpg_mp");
	self givemaxammo("proximity_grenade_mp");
	self iprintln("RPG Nac Class received.");
}

selectfireclass()
{
	self takeallweapons();
	self setperk("specialty_fallheight");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_stunprotection");
	self giveweapon("hatchet_mp");
	self giveweapon("proximity_grenade_mp");
	self giveweapon("knife_mp", 0, 30, 0, 0, 0, 0);
	self giveweapon("dsr50_mp+fmj+steadyaim", 0, 30, 0, 0, 0, 0);
	self giveweapon("hk416_mp+sf", 0, 30, 0, 0, 0, 0);
	self givemaxammo("dsr50_mp+fmj+steadyaim");
	self givemaxammo("hk416_mp+sf");
	self givemaxammo("proximity_grenade_mp");
	self iprintln("Select Fire Class received.");
}

// Client Options

kickplayer( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		kick( player getEntityNumber() );
		self iprintln("^2" + player getPlayerName() + "^7 has been kicked." );
	}

}

banplayer( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		ban( player getentitynumber() );
		self iprintln("^2" + player getPlayerName() + "^7 has been banned." );
		wait 0.5;
	}

}

freezeconsole(player)
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		self iprintln("^2" + player getPlayerName() + "^7's console has been frozen." );
		player playlocalsound( "tst_test_system" );
		rip = 0;
		while( rip < 50 )
		{
			player iprintlnbold( "^HO" );
			player iprintlnbold( "^HAS" );
			wait 0.01;
			rip++;
		}
	}

}

killplayer( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		self iprintln( "^2" + player getPlayerName() + "^7 has been killed." );
		player suicide();
		player iprintln( "You have been killed.");
	}

}

freezeplayer( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		if( player.frozen == 0 )
		{
			player.frozen = 1;
			player freezecontrols( 1 );
			self iprintln("^2" + player getPlayerName() + "^7 has been ^2frozen^7." );
			player iprintln( "You have been ^2frozen^7." );
		}
		else
		{
			if( player.frozen == 1 )
			{
				player.frozen = 0;
				player freezecontrols( 0 );
				self iprintln("^2" + player getPlayerName() + "^7 has been ^1unfrozen^7." );
				player iprintln( "You have been ^1unfrozen^7." );
			}
		}

	}
}

teleporttome( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
	player setorigin( self.origin );
	self iprintln( "^2" + player getPlayerName() + "^7 has been teleported to you." );
	player iprintln( "You have been teleported." );
	}
}

teleporttothem( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
	self setorigin( player.origin );
	self iprintln( "You have been teleported to ^2" + player getPlayerName() + "^7.");
	}
}

teleportthemtocrosshair(player)
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
	player setorigin( bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 0, self )[ "position"] );
	self iprintln( "You have teleported ^2" + player getPlayerName() + "^7 to your crosshair.");
	player iprintln( "You have been teleported." );
	}
}

givegodmode( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		if( player.god == 0 )
		{
			self iprintln( "God Mode has been ^2enabled ^7for ^2"+ player getPlayerName() + "^7.");
			player iprintln( "God Mode has been ^2enabled^7." );
			player.god = 1;
			player enableinvulnerability();
		}
		else
		{
			self iprintln( "God Mode has been ^1disabled ^7for ^2"+ player getPlayerName() + "^7.");
			player iprintln( "God Mode has been ^1disabled^7." );
			player.god = 0;
			player disableinvulnerability();
		}
	}

}

giveffalast( player )
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
			self iprintln( "^2" + player getPlayerName() + "^7 has been given last.");
			player  ffalast();
	}
}

givesaveandload(player)
{
	if( player ishost() )
	{
		self iprintln( "^1Error^7: You can not edit players with verification level [^2Host^7]." );
	}
	else
	{
		if( player.aimp == 0 )
		{
			player.aimp = 1;
			self iprintln( "Save & Load has been given to ^2" + player getPlayerName() + "^7." );
			player saveandload();
		
		}
		else
		{
			player.aimp = 0;
			self iprintln( "Save & Load has been removed from ^2" + player getPlayerName() + "^7." );
			player saveandload();
		}
	}

}