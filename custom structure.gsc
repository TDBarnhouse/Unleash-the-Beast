menuOptions( menu )
{
	//WE'RE USING IF STATEMENTS TO SAVE VARIABLES. METHOD: WE'RE ONLY LOADING THE VARIABLES FOR THE MENU WE'RE CURRENTLY IN.
	if(menu == "main")
	{
		self addMenu("main", "Main Menu");
			self addOpt("^6Host Only! :)", undefined, ::newMenu, "submenu1");
			self addOpt("Main Mods", undefined, ::newMenu, "submenu2");
			self addOpt("Fun Mods", undefined, ::newMenu, "submenu3");
			self addOpt("Player Mods", undefined, ::newMenu, "submenu4");
			self addOpt("Visions", undefined, ::newMenu, "submenu5");
			self addOpt("Aimbots", undefined, ::newMenu, "submenu6");
			self addOpt("Weapon Mods", undefined, ::newMenu, "submenu7");
			self addOpt("Killstreaks", undefined, ::newMenu, "submenu8");
			self addOpt("Bullets", undefined, ::newMenu, "submenu9");
			self addOpt("Spawnables", undefined, ::newMenu, "submenu10");
			self addOpt("Lobby Settings", undefined, ::newMenu, "submenu11");
			self addOpt("Messages", undefined, ::newMenu, "submenu12");
			self addOpt("[^2Trickshotter^7] Verification", undefined, ::newMenu, "submenu13");
			self addOpt("[^2VIP^7] Verification", undefined, ::newMenu, "submenu14");
			self addOpt("[^2Admin^7] Verification", undefined, ::newMenu, "submenu15");
			self addOpt("[^2Co-Host^7] Verification", undefined, ::newMenu, "submenu16");
			self addOpt("Client Options", undefined, ::newMenu,"Client");
			self addOpt("Menu Customizations", undefined, ::newMenu, "customize");
	}
	else if(menu == "submenu1")
	{
		self addMenu("submenu1", "^6Host Only! :)", "Host");
			self addOpt("Force Host", undefined, ::forcehost);
			self addOpt("Fast Restart", undefined, ::fastRestart);
			self addOpt("God Mode", undefined, ::godmode);
	}
	else if(menu == "submenu2")
	{
		self addMenu("submenu2", "Main Mods", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu3")
	{
		self addMenu("submenu3", "Fun Mods", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu4")
	{
		self addMenu("submenu4", "Player Mods", "Host;Co-Host;Admin;VIP");
			self addOpt("Models", undefined, ::newMenu, "modelsmenu4");
			self addOpt("Effects", undefined, ::newMenu, "effectsmenu4");
	}
	
	//
	
	else if (menu == "modelsmenu4")
	{
		self addMenu("modelsmenu4", "Models", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if (menu == "effectsmenu4")
	{
		self addMenu("effectsmenu4", "Effects", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	
	//
	
	else if(menu == "submenu5")
	{
		self addMenu("submenu5", "Visions", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu6")
	{
		self addMenu("submenu6", "Aimbots", "Host;Co-Host;Admin");
			self addOpt( "Equipment Aimbot", undefined, ::needscode );
			self addOpt( "Advanced Aimbot", undefined, ::toggleaimbotz );
			self addOpt( "Aimbot", undefined, ::g_weapon );
			self addOpt( "Aimbot", undefined, ::g_weapon );
			self addOpt( "Aimbot", undefined, ::g_weapon );
			self addOpt( "Aimbot", undefined, ::g_weapon );
	}
	else if(menu == "submenu7")
	{
		self addMenu("submenu7", "Weapon Mods", "Host;Co-Host;Admin;VIP");
			self addOpt("Weapons", undefined, ::newMenu, "weaponsmenu7");
			self addOpt("Camos", undefined, ::newMenu, "camosmenu7");
	}
	
	//
	
	else if (menu == "weaponsmenu7")
	{
		self addMenu("weaponsmenu7", "Weapons", "Host;Co-Host;Admin;VIP");
			self addOpt("Submachine Guns", undefined, ::newMenu, "submachinegunsmenu7");
			self addOpt("Assault Rifles", undefined, ::newMenu, "assaultriflesmenu7");
			self addOpt("Shotguns", undefined, ::newMenu, "shotgunsmenu7");
			self addOpt("Light Machine Guns", undefined, ::newMenu, "lightmachinegunsmenu7");
			self addOpt("Sniper Rifles", undefined, ::newMenu, "sniperriflesmenu7");
			self addOpt("Specials", undefined, ::newMenu, "specialsmenu7");
			self addOpt("Pistols", undefined, ::newMenu, "pistolsmenu7");
			self addOpt("Launchers", undefined, ::newMenu, "launchersmenu7");
			
	}
	else if (menu == "submachinegunsmenu7")
	{
		self addMenu("submachinegunsmenu7", "Submachine Guns", "Host;Co-Host;Admin;VIP");
			self addOpt( "MP7", undefined, ::g_weapon, "mp7_mp" );
			self addOpt( "PDW-57", undefined, ::g_weapon, "pdw57_mp" );
			self addOpt( "Vector K10", undefined, ::g_weapon, "vector_mp" );
			self addOpt( "MSMC", undefined, ::g_weapon, "insas_mp" );
			self addOpt( "Chicom CQB", undefined, ::g_weapon, "qcw05_mp" );
			self addOpt( "Skorpion EVO", undefined, ::g_weapon, "evoskorpion_mp" );
			self addOpt( "Peacekeeper", undefined, ::g_weapon, "peacekeeper_mp" );
	}	
	else if (menu == "assaultriflesmenu7")
	{
		self addMenu("assaultriflesmenu7", "Assault Rifles", "Host;Co-Host;Admin;VIP");
			self addOpt( "MTAR", undefined, ::g_weapon, "tar21_mp" );
			self addOpt( "Type 25", undefined, ::g_weapon, "type95_mp" );
			self addOpt( "SWAT-556", undefined, ::g_weapon, "sig556_mp" );
			self addOpt( "FAL-OSW", undefined, ::g_weapon, "sa58_mp" );
			self addOpt( "M27", undefined, ::g_weapon, "hk416_mp" );
			self addOpt( "SCAR-H", undefined, ::g_weapon, "scar_mp" );
			self addOpt( "SMR", undefined, ::g_weapon, "saritch_mp" );
			self addOpt( "M8A1", undefined, ::g_weapon, "xm8_mp" );
			self addOpt( "AN-94", undefined, ::g_weapon, "an94_mp" );
	}	
	else if (menu == "shotgunsmenu7")
	{
		self addMenu("shotgunsmenu7", "Shotguns", "Host;Co-Host;Admin;VIP");
			self addOpt( "R870 MCS", undefined, ::g_weapon, "870mcs_mp" );
			self addOpt( "S12", undefined, ::g_weapon, "saiga12_mp" );
			self addOpt( "KSG", undefined, ::g_weapon, "ksg_mp" );
			self addOpt( "M1216", undefined, ::g_weapon, "srm1216_mp" );
	}
	else if (menu == "lightmachinegunsmenu7")
	{
		self addMenu("lightmachinegunsmenu7", "Light Machine Guns", "Host;Co-Host;Admin;VIP");
			self addOpt( "Mk 48", undefined, ::g_weapon, "mk48_mp" );
			self addOpt( "QBB LSW", undefined, ::g_weapon, "qbb95_mp" );
			self addOpt( "LSAT", undefined, ::g_weapon, "lsat_mp" );
			self addOpt( "HAMR", undefined, ::g_weapon, "hamr_mp" );
	}	
	else if (menu == "sniperriflesmenu7")
	{
		self addMenu("sniperriflesmenu7", "Sniper Rifles", "Host;Co-Host;Admin;VIP");
			self addOpt( "SVU", undefined, undefined, ::g_weapon, "svu_mp+steadyaim" );
			self addOpt( "DSR 50", undefined, ::g_weapon, "dsr50_mp+steadyaim" );
			self addOpt( "Ballista", undefined, ::g_weapon, "ballista_mp+steadyaim" );
			self addOpt( "XPR", undefined, ::g_weapon, "as50_mp+steadyaim" );	
	}	
	else if (menu == "specialsmenu7")
	{
		self addMenu("specialsmenu7", "Specials", "Host;Co-Host;Admin;VIP");
			self addOpt( "Assualt Shield", undefined, ::g_weapon, "riotshield_mp" );
			self addOpt( "Crossbow", undefined, ::g_weapon, "crossbow_mp" );
			self addOpt( "Ballistic Knife", undefined, ::g_weapon, "knife_ballistic_mp" );
	}	
	else if (menu == "pistolsmenu7")
	{
		self addMenu("pistolsmenu7", "Pistols", "Host;Co-Host;Admin;VIP");
			self addOpt( "Five Seven", undefined, ::g_weapon, "fiveseven_mp" );
			self addOpt( "Tac-45", undefined, ::g_weapon, "fnp45_mp" );
			self addOpt( "B23R", undefined, ::g_weapon, "beretta93r_mp" );
			self addOpt( "Executioner", undefined, ::g_weapon, "judge_mp" );
			self addOpt( "KAP-40", undefined, ::g_weapon, "kard_mp" );
	}	
	else if (menu == "launchersmenu7")
	{
		self addMenu("launchersmenu7", "Launchers", "Host;Co-Host;Admin;VIP");
			self addOpt( "SMAW", undefined, ::g_weapon, "smaw_mp" );
			self addOpt( "FHJ-18 AA", undefined, ::g_weapon, "fhj18_mp" );
			self addOpt( "RPG", undefined, ::g_weapon, "usrpg_mp" );
	}	
	else if (menu == "camosmenu7")
	{
		self addMenu("camosmenu7", "Camos", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	
	//
	
	else if(menu == "submenu8")
	{
		self addMenu("submenu8", "Killstreaks", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu9")
	{
		self addMenu("submenu9", "Bullets", "Host;Co-Host;Admin");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu10")
	{
		self addMenu("submenu10", "Spawnables", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu11")
	{
		self addMenu("submenu11", "Lobby Settings", "Host;Co-Host");
			self addOpt("Lobby Mods", undefined, ::newMenu, "lobbymodsmenu11");
			self addOpt("Bot Settings", undefined, ::newMenu, "botsettingsmenu11");
			self addOpt("Maps", undefined, ::newMenu, "mapsmenu11");
			self addOpt("Gamemodes", undefined, ::newMenu, "gamemodesmenu11");
	}
	
	//
	
	else if (menu == "lobbymodsmenu11")
	{
		self addMenu("lobbymodsmenu11", "Lobby Mods", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if (menu == "botsettingsmenu11")
	{
		self addMenu("botsettingsmenu11", "Bot Settings", "Host;Co-Host");
			self addOpt("Spawn 1 Bot", undefined, ::spawnbots, 1); 
			self addOpt("Spawn 3 Bot", undefined, ::spawnbots, 3);
			self addOpt("Fill Lobby", undefined, ::spawnbots, 17);
			self addOpt("Teleport to Crosshair", undefined, ::teleportbotstocrosshair);
			self addOpt("Make Bots Look at You", undefined, ::makebotswatch);
			self addOpt("Freeze Bots", undefined, ::freezebots);
			self addOpt("Kick Bots", undefined, ::kickbots);
			
			
	}
	else if (menu == "mapsmenu11")
	{
		self addMenu("mapsmenu11", "Maps", "Host;Co-Host");
			self addOpt("Standard", undefined, ::newMenu, "standardmenu11");
			self addOpt("DLC", undefined, ::newMenu, "dlcmenu11");
	}
	
	//
	
	else if (menu == "standardmenu11")
	{
		self addMenu("standardmenu11", "Standard", "Host;Co-Host");
			self addOpt( "Aftermath", undefined, ::changemap, "mp_la" );
			self addOpt( "Cargo", undefined, ::changemap, "mp_dockside" );
			self addOpt( "Carrier", undefined, ::changemap, "mp_carrier" );
			self addOpt( "Drone", undefined, ::changemap, "mp_drone" );
			self addOpt( "Express", undefined, ::changemap, "mp_express" );
			self addOpt( "Hijacked", undefined, ::changemap, "mp_hijacked" );
			self addOpt( "Meltdown", undefined, ::changemap, "mp_meltdown" );
			self addOpt( "Overflow", undefined, ::changemap, "mp_overflow" );
			self addOpt( "Plaza", undefined, ::changemap, "mp_nightclub" );
			self addOpt( "Raid", undefined, ::changemap, "mp_raid" );
			self addOpt( "Slums", undefined, ::changemap, "mp_slums" );
			self addOpt( "Standoff", undefined, ::changemap, "mp_village" );
			self addOpt( "Turbine", undefined, ::changemap, "mp_turbine" );
			self addOpt( "Yemen", undefined, ::changemap, "mp_socotra" );
	}
	else if (menu == "dlcmenu11")
	{
		self addMenu("dlcmenu11", "DLC", "Host;Co-Host");
			self addOpt( "Nuketown 2025", undefined, ::changemap, "mp_nuketown_2020" );
			self addOpt( "Downhill", undefined, ::changemap, "mp_downhill" );
			self addOpt( "Mirage", undefined, ::changemap, "mp_mirage" );
			self addOpt( "Hydro", undefined, ::changemap, "mp_hydro" );
			self addOpt( "Grind", undefined, ::changemap, "mp_skate" );
			self addOpt( "Encore", undefined, ::changemap, "mp_concert" );
			self addOpt( "Magma", undefined, ::changemap, "mp_magma" );
			self addOpt( "Vertigo", undefined, ::changemap, "mp_vertigo" );
			self addOpt( "Studio", undefined, ::changemap, "mp_studio" );
			self addOpt( "Uplink", undefined, ::changemap, "mp_uplink" );
			self addOpt( "Detour", undefined, ::changemap, "mp_bridge" );
			self addOpt( "Cove", undefined, ::changemap, "mp_castaway" );
			self addOpt( "Rush", undefined, ::changemap, "mp_paintball" );
			self addOpt( "Dig", undefined, ::changemap, "mp_dig" );
			self addOpt( "Frost", undefined, ::changemap, "mp_frostbite" );
			self addOpt( "Pod", undefined, ::changemap, "mp_pod" );
			self addOpt( "Takeoff", undefined, ::changemap, "mp_takeoff" );
	}
	
	//
	else if (menu == "gamemodesmenu11")
	{
		self addMenu("gamemodesmenu11", "Gamemodes", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	
	//
	
	else if(menu == "submenu12")
	{
		self addMenu("submenu12", "Messages", "Host;Co-Host");
			self addOpt("Advertisement", undefined, ::newMenu, "advertisementmenu12");
			self addOpt("Nice Messages", undefined, ::newMenu, "nicemessagesmenu12");
			self addOpt("Mean Messages", undefined, ::newMenu, "meanmessagesmenu12");
			self addOpt("General Responses", undefined, ::newMenu, "generalresponsesmenu12");
	}
	
	//
	
	else if (menu == "advertisementmenu12")
	{
		self addMenu("advertisementmenu12", "Advertisement", "Host;Co-Host");
			self addOpt("Access", undefined, ::typewritter, "You only have access to [^2Trickshotter^7] Verification!");
			self addOpt("Rest of Menu", undefined, ::typewritter, "Rest of menu is being developed!");
	}
	else if (menu == "nicemessagesmenu12")
	{
		self addMenu("nicemessagesmenu12", "Nice Messages", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if (menu == "meanmessagesmenu12")
	{
		self addMenu("meanmessagesmenu12", "Mean Messages", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if (menu == "generalresponsesmenu12")
	{
		self addMenu("generalresponsesmenu12", "General Responses", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	
	//
	
	else if(menu == "submenu13")
	{
		self addMenu("submenu13", "[^2Trickshotter^7] Verification", "Host;Co-Host;Admin;VIP;Trickshotter");
			self addOpt("Trickshot Mods", "by Beastie		                                         1/7", ::newMenu, "tsmodsmenu13");
			self addOpt("Teleport Menu", "by Beastie		                                         2/7", ::newMenu, "teleportmenu13");
			self addOpt("Premade Classes", "by Beastie		                                         3/7", ::newMenu, "premadeclassesmenu13");
			self addOpt("Nac Binds", "by Beastie		                                         4/7", ::newMenu, "nacbindsmenu13");
			self addOpt("Bounces", "by Beastie		                                         5/7", ::newMenu, "bouncesmenu13");
			self addOpt("Slides", "by Beastie		                                         6/7", ::newMenu, "slidesmenu13");
			self addOpt("Spawnables", "by Beastie		                                         7/7", ::newMenu, "spawnablesmenu13");
	}
	
	//
	
	else if (menu == "tsmodsmenu13")
	{
		self addMenu("tsmodsmenu13", "Trickshot Mods", "Host;Co-Host;Admin;VIP;Trickshotter");
			self addOpt("FFA Last", undefined, ::ffalast);
			self addOpt("Save & Load", undefined, ::saveandload);
			self addOpt("Change Class", undefined, ::changeclass); 
			self addOpt("Trickshot Perks", undefined, ::tsperks);
			self addOpt("Fake Bullet Trail", undefined, ::fakebullettrail);
			self addOpt("Drop Random Canswap", undefined, ::droprandomcan);
			self addOpt("Infinite Equipment", undefined, ::toggleinfequipment);
			self addOpt("Max Ammo", undefined, ::maxammo);
			self addOpt("Frog Jump", undefined, ::togglefrogjump);
	}
	else if (menu == "teleportmenu13")
	{
		self addMenu("teleportmenu13", "Teleport Menu", "Host;Co-Host;Admin;VIP;Trickshotter");		
			self addOpt("Custom Teleport", undefined, ::customteleport);
			self addOpt("Teleport to Crosshair", undefined, ::teleporttocrosshair);
			self addOpt("Custom Location Tool Info", undefined, ::togglecoordinates); // Maybe make host only?
			
	
	if( getdvar( "mapname" ) == "mp_carrier" )
	{
		self addOpt( "Carrier Menu", undefined, ::newMenu, "carriermenu");
		self addMenu( "carriermenu", "Carrier Menu", "Host;Co-Host;Admin;VIP;Trickshotter");
		self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -5152.78, 3028.75, 131.772 ), "Platform at Location 1" );
		self addOpt("Platform at Location 2", undefined, ::teletocoords, ( -7929.73, -226.381, 109.245 ), "Platform at Location 2" );
		self addOpt("1800 Spot", undefined, ::teletocoords, ( -6387.18, -741.67, 39.9532 ), "1800 Spot" );
		self addOpt("Top Of Planes", undefined, ::teletocoords, ( -5171.96, -817.529, 156.52 ), "Top of Planes" );
		self addOpt("Ramp", undefined, ::teletocoords, ( -3227.24, 339.968, 114.246 ), "Ramp" );
		self addOpt("James Bond", undefined, ::teletocoords, ( -4095.08, -1945.7, -39.875 ), "James Bond" );
		self addOpt("Back Of The Boat", undefined, ::teletocoords, ( -5066.9, 1303.77, 44.125 ), "Back of the Boat" );
		self addOpt("Out Of Map", undefined, ::teletocoords, ( -2875.45, 1189.88, -65.1878 ), "Out of Map" );
	}
	else
	{
		if( getdvar( "mapname" ) == "mp_studio" )
		{
			self addOpt( "Studio Menu", undefined, ::newMenu, "studiomenu");
			self addMenu( "studiomenu", "Studio Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
			self addOpt("Create Platform at Location 1", undefined, ::teletocoords, ( 4038.07, 5913.76, 4574.48 ), "Platform at Location 1" );
			self addOpt("Create Platform at Location 2", undefined, ::teletocoords, ( -8015.84, 523.655, 5047.03 ), "Platform at Location 2" );
			self addOpt("Top Of Castle", undefined, ::teletocoords, ( 1211.32, 1449.69, 94.125 ), "Top of Castle" );
			self addOpt("Loz Spot", undefined, ::teletocoords, ( 578.763, -1199.6, 219.065 ), "Loz Spot" );
			self addOpt("Top Of Tower", undefined, ::teletocoords, ( 449.32, 1009.19, 194.125 ), "Top of Tower" );
			self addOpt("Wood House", undefined, ::teletocoords, ( -69.3885, 1256.52, 96.125 ), "Wood House" );
		}
		else
		{
			if( getdvar( "mapname" ) == "mp_turbine" )
			{
				self addOpt( "Turbine Menu", undefined, ::newMenu, "turbinemenu");
				self addMenu( "turbinemenu", "Turbine Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
				self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -3146.78, 2419, 1447.14 ), "Platform at Location 1" );
				self addOpt("Platform at Location 2", undefined, ::teletocoords, ( -3837.56, -2762.06, 2169.71 ), "Platform at Location 2" );
				self addOpt("Top Of Plane", undefined, ::teletocoords, ( 324.008, 803.577, 501.577 ), "Top of Plane" );
				self addOpt("Turret Room", undefined, ::teletocoords, ( 1755.02, 2315.26, 210.125 ), "Turret Room" );
				self addOpt("Top Of Bridge", undefined, ::teletocoords, ( 843.215, 3142.4, 230.125 ), "Top of Bridge" );
				self addOpt("Rock", undefined, ::teletocoords, ( 637.794, -1392.34, 442.125 ), "Rock" );
				self addOpt("Machine Room", undefined, ::teletocoords, ( -457.409, 1624.82, 457.125 ), "Machine Room" );
				self addOpt("Out Of Map", undefined, ::teletocoords, ( -1291.55, -3218.86, 454.183 ), "Out of Map" );
			}
			else
			{
				if( getdvar( "mapname" ) == "mp_raid" )
				{
					self addOpt( "Raid Menu", undefined, ::newMenu, "raidmenu");
					self addMenu( "raidmenu", "Raid Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
					self addOpt("Platform at Location 1", undefined, ::teletocoords, ( 2001.38, 8543.73, 1401.89 ), "Platform at Location 1" );
					self addOpt("Platform at Location 2", undefined, ::teletocoords, ( 2772.28, -1374.15, 2192.96 ), "Platform at Location 2" );
					self addOpt("Loz Spot", undefined, ::teletocoords, ( -210.533, 3449.34, 259.125 ), "Loz Spot" );
					self addOpt("Roof Slide", undefined, ::teletocoords, ( 2784.38, 4458.21, 385.118 ), "Roof Slide" );
					self addOpt("Main Spot", undefined, ::teletocoords, ( 2893.36, 4341.59, 148.125 ), "Main Spot" );
					self addOpt("Red Statue", undefined, ::teletocoords, ( 2360.91, 1720.3, 193.125 ), "Red Statue" );
					self addOpt("Palm Tree", undefined, ::teletocoords, ( 2712.59, 4764.21, 137.625 ), "Palm Tree" );
				}
				else
				{
					if( getdvar( "mapname" ) == "mp_uplink" )
					{
						self addOpt( "Uplink Menu", undefined, ::newMenu, "uplinkmenu");
						self addMenu( "uplinkmenu", "Uplink Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
						self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -2146.67, -111.594, 2344.96 ), "Platform at Location 1" );
						self addOpt("Platform at Location 2", undefined, ::teletocoords, ( 8232.03, -428.097, 3883.88 ), "Platform at Location 2" );
						self addOpt("Top Of Tower", undefined, ::teletocoords, ( 1952.51, -372.968, 443.625 ), "Top of Tower" );
						self addOpt("Gondola", undefined, ::teletocoords, ( 1655.92, 346.266, 172.149 ), "Gondola" );
						self addOpt("Gas/Oil Tank", undefined, ::teletocoords, ( 3350.17, -1749.83, 490.625 ), "Gas/Oil Tank" );
						self addOpt("Balcony", undefined, ::teletocoords, ( 2705.59, -547.284, 454.125 ), "Balcony" );
						self addOpt("B Bomb Ledge", undefined, ::teletocoords, ( 3696.01, -382.12, 489.585 ), "B Bomb Ledge" );
						self addOpt("Window Shot", undefined, ::teletocoords, ( 2912.21, -1371.99, 456.125 ), "Window Shot" );
					}
					else
					{
						if( getdvar( "mapname" ) == "mp_drone" )
						{
							self addOpt( "Drone Menu", undefined, ::newMenu, "dronemenu");
							self addMenu( "dronemenu", "Drone Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
							self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -800.938, -3645.21, 923.939 ), "Platform at Location 1" );
							self addOpt("Platform at Location 2", undefined, ::teletocoords, ( 10928.9, 3015.94, 10979.8 ), "Platform at Location 2" );
							self addOpt("Rocks Spawnshot", undefined, ::teletocoords, ( 78.1245, 2840.09, 343.429 ), "Rocks Spawnshot" );
							self addOpt("Helicopter", undefined, ::teletocoords, ( -173.848, -1072.96, 240.125 ), "Helicopter" );
							self addOpt("Mid Map Ledge", undefined, ::teletocoords, ( 115.508, 1154.79, 267.125 ), "Mid Map Ledge" );
							self addOpt("Out Of Map", undefined, ::teletocoords, ( 2938.57, 715.293, 762.602 ), "Out of Map" );
							self addOpt("Drone Parking", undefined, ::teletocoords, ( -5854.43, -748.879, 80.125 ), "Drone Parking" );
						}
						else
						{
							if( getdvar( "mapname" ) == "mp_socotra" )
							{
								self addOpt( "Yemen Menu", undefined, ::newMenu, "yemenmenu");
								self addMenu( "yemenmenu", "Yemen Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
								self addOpt("Platform at Location 1", undefined, ::teletocoords, ( 4170.47, -361.478, 2522.89 ), "Platform at Location 1" );
								self addOpt("Platform at Location 2", undefined, ::teletocoords, ( -4349.83, 172.865, 3748.05 ), "Platform at Location 2" );
								self addOpt("Ladder Balcony", undefined, ::teletocoords, ( 33.2626, 1408.15, 414.625 ), "Ladder Balcony" );
								self addOpt("Mid Map Hole", undefined, ::teletocoords, ( 183.527, -186.617, 165.27 ), "Mid Map Hole" );
								self addOpt("Back Of The Map", undefined, ::teletocoords, ( -81.3778, -2216.61, 241.125 ), "Back of the Map" );
								self addOpt("High Balcony", undefined, ::teletocoords, ( 1053.69, 771.299, 283.125 ), "High Balcony" );
							}
							else
							{
								if( getdvar( "mapname" ) == "mp_hijacked" )
								{
									self addOpt( "Hijacked Menu", undefined, ::newMenu, "hijackedmenu");
									self addMenu( "hijackedmenu", "Hijacked Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
									self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -355.51, 2463.8, 232.006 ), "Platform at Location 1" );
									self addOpt("Platform at Location 2", undefined, ::teletocoords, ( 1.73722, -5743.16, 2581.02 ), "Platform at Location 2" );
									self addOpt("Mid Balcony", undefined, ::teletocoords, ( 351.546, -128.787, 164.125 ), "Mid Balcony" );
									self addOpt("Front Balcony", undefined, ::teletocoords, ( 1167.45, -5.30164, 192.125 ), "Front Balcony" );
									self addOpt("Window Shot", undefined, ::teletocoords, ( -806.344, -48.5419, 164.125 ), "Window Shot" );
									self addOpt("Back Balcony", undefined, ::teletocoords, ( -1567.54, 37.1976, 92.125 ), "Back Balcony" );
								}
								else
								{
									if( getdvar( "mapname" ) == "mp_village" )
									{
										self addOpt( "Standoff Menu", undefined, ::newMenu, "standoffmenu");
										self addMenu( "standoffmenu", "Standoff Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
										self addOpt("Platform at Location 1", undefined, ::teletocoords, ( 787.736, 3438.56, 1126.91 ), "Platform at Location 1" );
										self addOpt("Platform at Location 2", undefined, ::teletocoords, ( -3467.29, 571.058, 2262.54 ), "Platform at Location 2" );
										self addOpt("Window Shot 1", undefined, ::teletocoords, ( -240.018, 1073.32, 142.125 ), "Window Shot 1" );
										self addOpt("Window Shot 2", undefined, ::teletocoords, ( 1096.83, 686.184, 144.125 ), "Window Shot 2" );
										self addOpt("Window Shot 3", undefined, ::teletocoords, ( -974.722, -1512.73, 144.125 ), "Window Shot 3" );
										self addOpt("Main Spot", undefined, ::teletocoords, ( -1236.07, -1067.99, 153.867 ), "Main Spot" );
										self addOpt("Mid Balcony", undefined, ::teletocoords, ( 56.8112, -405.375, 164.683 ), "Mid Balcony" );
									}
									else
									{
										if( getdvar( "mapname" ) == "mp_bridge" )
										{
											self addOpt( "Detour Menu", undefined, ::newMenu, "detourmenu");
											self addMenu( "detourmenu", "Detour Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
											self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -106.346, -6869.5, 850.122 ), "Platform at Location 1" );
											self addOpt("Platform at Location 2", undefined, ::teletocoords, ( -325.902, 8958.67, 3510.48 ), "Platform at Location 2" );
											self addOpt("Catwalk 1", undefined, ::teletocoords, ( -1930.3, -938.867, -122.375 ), "Catwalk 1" );
											self addOpt("Catwalk 2", undefined, ::teletocoords, ( 1951.35, 962.326, -118.875 ), "Catwalk 2" );
											self addOpt("Mid Map Holes", undefined, ::teletocoords, ( 17.6755, 2.51316, -23.6969 ), "Mid Map Holes" );
											self addOpt("Main Ledge", undefined, ::teletocoords, ( -398.389, -1341.2, 33.125 ), "Main Ledge" );
										}
										else
										{
											if( getdvar( "mapname" ) == "mp_vertigo" )
											{
												self addOpt( "Vertigo Menu", undefined, ::newMenu, "vertigomenu");
												self addMenu( "vertigomenu", "Vertigo Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
												self addOpt("Platform at Location 1", undefined, ::teletocoords, ( -151.842, -4738.63, 877.593 ), "Platform at Location 1" );
												self addOpt("Platform at Location 2", undefined, ::teletocoords, ( 168.552, 4672.74, 1518.03 ), "Platform at Location 2" );
												self addOpt("Platform at Location 3", undefined, ::teletocoords, ( 2890.84, -1526.84, 927.064 ), "Platform at Location 3" );
												self addOpt("Spawn Ledge 1", undefined, ::teletocoords, ( 217.911, 3236.94, -20.875 ), "Spawn Ledge 1" );
												self addOpt("Spawn Ledge 2", undefined, ::teletocoords, ( -141.83, -3078.94, -35.875 ), "Spawn Ledge 2" );
												self addOpt("Ladder Spot", undefined, ::teletocoords, ( 891.167, 8.28944, 104.125 ), "Ladder Spot" );
												self addOpt("Mid Map Hole", undefined, ::teletocoords, ( -211.956, 3.97797, 8.41795 ), "Mid Map Hole" );
											}
											else
											{
												if( getdvar( "mapname" ) == "mp_mirage" )
												{
													self addOpt( "Mirage Menu", undefined, ::newMenu, "miragemenu");
													self addMenu( "miragemenu", "Mirage Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
													self addOpt("Platform at Location 1", undefined, ::teletocoords, ( 219.145, 5417.77, 1322.72 ), "Platform at Location 1" );
													self addOpt("Platform at Location 2", undefined, ::teletocoords, ( -1130.01, -2860.73, 2241.22 ), "Platform at Location 2" );
													self addOpt("Trampoline", undefined, ::teletocoords, ( 11.3448, 2595.22, 176.125 ), "Trampoline" );
													self addOpt("Window", undefined, ::teletocoords, ( -746.725, 2211.42, 179.622 ), "Window" );
													self addOpt("Roof", undefined, ::teletocoords, ( -605.112, 1346.63, 936.894 ), "Roof" );
													self addOpt("Main Spot", undefined, ::teletocoords, ( 801.986, 2282.85, 176.125 ), "Main Spot" );
													self addOpt("Spawn Ledge", undefined, ::teletocoords, ( 1929.05, 920.506, 169.579 ), "Spawn Ledge" );
												}
												else 
												{
													if( getdvar( "mapname" ) == "mp_express" )
													{
														self addOpt( "Express Menu", undefined, ::newMenu, "expressmenu");
														self addMenu( "expressmenu", "Express Menu", "Host;Co-Host;Admin;VIP;Trickshotter" );
														self addOpt( "Platform at Location 1", undefined, ::teletocoords, ( -1841.93, 1105.62, 699.391 ), "Platform at Location 1" );
														self addOpt( "Out of Map", undefined, ::teletocoords, ( 172.76, 2356.8, 180.125 ), "Out of Map" );
														self addOpt( "Left End of Train", undefined, ::teletocoords, ( 75.706, 1220.63, 116.125 ), "Left End of Train" );
														self addOpt( "Right End of Train", undefined, ::teletocoords, ( 71.5841, -1189.55, 116.125 ), "Right End of Train" );
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
		
		
	}	
	else if (menu == "premadeclassesmenu13")
	{
		self addMenu("premadeclassesmenu13", "Premade Classes", "Host;Co-Host;Admin;VIP;Trickshotter");
			self addOpt("Moni Nac Class", undefined, ::moninacclass);
			self addOpt("Hybrid Nac Class", undefined, ::hybridnacclass);
			self addOpt("Titty Nac Class", undefined, ::tittynacclass);
			self addOpt("RPG Nac Class", undefined, ::rpgnacclass);
			self addOpt("Select Fire Class", undefined, ::selectfireclass);
	}
	else if (menu == "nacbindsmenu13")
	{
		self addMenu("nacbinds", "Nac Binds", "Host;Co-Host;Admin;VIP;Trickshotter");
			self addOpt("Hybrid Nac Bind", undefined, ::needscode);
	}
	else if (menu == "bouncesmenu13")
	{
		self addMenu("bouncesmenu13", "Bounces", "Host;Co-Host");
			self addOpt("Normal Bounce", undefined, ::needscode);
			self addOpt("Medium Bounce", undefined, ::needscode);
			self addOpt("High Bounce", undefined, ::needscode);
			self addOpt("Insane Bounce", undefined, ::needscode);
			self addOpt("Stealth Bounce", undefined, ::needscode);
			self addOpt("Backflip Bounce", undefined, ::needscode);
	}
	else if (menu == "slidesmenu13")
	{
		self addMenu("slidesmenu13", "Slides", "Host;Co-Host");
			self addOpt("Normal Slide", undefined, ::needscode);
			self addOpt("High Slide", undefined, ::needscode);
	}
	else if (menu == "spawnablesmenu13")
	{
		self addMenu("spawnablesmenu13", "Spawnables", "Host;Co-Host");
			self addOpt("Platform", undefined, ::needscode);
			self addOpt("Care Package Stall", undefined, ::needscode);
			
			if( getdvar( "mapname" ) == "mp_carrier" )
	{
		self addOpt( "Carrier Platform Menu", undefined, ::newMenu, "carriermenu");
		self addMenu( "carriermenu", "Carrier Platform Menu", "Host;Co-Host");
		self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -5152.78, 3028.75, 131.772 ) );
		self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -7929.73, -226.381, 109.245 ) );
			}
	else
	{
		if( getdvar( "mapname" ) == "mp_studio" )
		{
			self addOpt( "Studio Platform Menu", undefined, ::newMenu, "studiomenu");
			self addMenu( "studiomenu", "Studio Platform Menu", "Host;Co-Host" );
			self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( 4038.07, 5913.76, 4574.48 ) );
			self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -8015.84, 523.655, 5047.03 ) );
					}
		else
		{
			if( getdvar( "mapname" ) == "mp_turbine" )
			{
				self addOpt( "Turbine Platform Menu", undefined, ::newMenu, "turbinemenu");
				self addMenu( "turbinemenu", "Turbine Platform Menu", "Host;Co-Host" );
				self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -3146.78, 2419, 1447.14 ) );
				self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -3837.56, -2762.06, 2169.71 ) );
						}
			else
			{
				if( getdvar( "mapname" ) == "mp_raid" )
				{
					self addOpt( "Raid Platform Menu", undefined, ::newMenu, "raidmenu");
					self addMenu( "raidmenu", "Raid Platform Menu", "Host;Co-Host" );
					self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( 2001.38, 8543.73, 1401.89 ) );
					self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( 2772.28, -1374.15, 2192.96 ) );
							}
				else
				{
					if( getdvar( "mapname" ) == "mp_uplink" )
					{
						self addOpt( "Uplink Platform Menu", undefined, ::newMenu, "uplinkmenu");
						self addMenu( "uplinkmenu", "Uplink Platform Menu", "Host;Co-Host" );
						self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -2146.67, -111.594, 2344.96 ) );
						self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( 8232.03, -428.097, 3883.88 ) );
									}
					else
					{
						if( getdvar( "mapname" ) == "mp_drone" )
						{
							self addOpt( "Drone Platform Menu", undefined, ::newMenu, "dronemenu");
							self addMenu( "dronemenu", "Drone Platform Menu", "Host;Co-Host" );
							self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -800.938, -3645.21, 923.939 ) );
							self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( 10928.9, 3015.94, 10979.8 ) );
								}
						else
						{
							if( getdvar( "mapname" ) == "mp_socotra" )
							{
								self addOpt( "Yemen Platform Menu", undefined, ::newMenu, "yemenmenu");
								self addMenu( "yemenmenu", "Yemen Platform Menu", "Host;Co-Host" );
								self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( 4170.47, -361.478, 2522.89 ) );
								self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -4349.83, 172.865, 3748.05 ) );
									}
							else
							{
								if( getdvar( "mapname" ) == "mp_hijacked" )
								{
									self addOpt( "Hijacked Platform Menu", undefined, ::newMenu, "hijackedmenu");
									self addMenu( "hijackedmenu", "Hijacked Platform Menu", "Host;Co-Host" );
									self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -355.51, 2463.8, 232.006 ) );
									self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( 1.73722, -5743.16, 2581.02 ) );
										}
								else
								{
									if( getdvar( "mapname" ) == "mp_village" )
									{
										self addOpt( "Standoff Platform Menu", undefined, ::newMenu, "standoffmenu");
										self addMenu( "standoffmenu", "Standoff Platform Menu", "Host;Co-Host" );
										self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( 787.736, 3438.56, 1126.91 ) );
										self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -3467.29, 571.058, 2262.54 ) );
											}
									else
									{
										if( getdvar( "mapname" ) == "mp_bridge" )
										{
											self addOpt( "Detour Platform Menu", undefined, ::newMenu, "detourmenu");
											self addMenu( "detourmenu", "Detour Platform Menu", "Host;Co-Host" );
											self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -106.346, -6869.5, 850.122 ) );
											self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -325.902, 8958.67, 3510.48 ) );
												}
										else
										{
											if( getdvar( "mapname" ) == "mp_vertigo" )
											{
												self addOpt( "Vertigo Platform Menu", undefined, ::newMenu, "vertigomenu");
												self addMenu( "vertigomenu", "Vertigo Platform Menu", "Host;Co-Host" );
												self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( -151.842, -4738.63, 877.593 ) );
												self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( 168.552, 4672.74, 1518.03 ) );
												self addOpt("Create Platform at Location 3", undefined, ::createplatform, ( 2890.84, -1526.84, 927.064 ) );
												}
											else
											{
												if( getdvar( "mapname" ) == "mp_mirage" )
												{
													self addOpt( "Mirage Platform Menu", undefined, ::newMenu, "miragemenu");
													self addMenu( "miragemenu", "Mirage Platform Menu", "Host;Co-Host" );
													self addOpt("Create Platform at Location 1", undefined, ::createplatform, ( 219.145, 5417.77, 1322.72 ) );
													self addOpt("Create Platform at Location 2", undefined, ::createplatform, ( -1130.01, -2860.73, 2241.22 ) );
												}
												else 
												{
													if( getdvar( "mapname" ) == "mp_express" )
													{
														self addOpt( "Express Platform Menu", undefined, ::newMenu, "expressmenu");
														self addMenu( "expressmenu", "Express Platform Menu", "Host;Co-Host" );
														self addOpt( "Create Platform at Location 1", undefined, ::createplatform, ( -1841.93, 1105.62, 699.391 ) );
															}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
			
	}
	
	//
	
	else if(menu == "submenu14")
	{
		self addMenu("submenu14", "[^2VIP^7] Verification", "Host;Co-Host;Admin;VIP");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu15")
	{
		self addMenu("submenu15", "[^2Admin^7] Verification", "Host;Co-Host;Admin");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "submenu16")
	{
		self addMenu("submenu16", "[^2Co-Host^7] Verification", "Host;Co-Host");
			for(e=0;e<10;e++) self addOpt("Option "+e);
	}
	else if(menu == "customize")
	{
		self addMenu("customize", "Menu Customizations");
			menuNames = strTok("Main|Title & Info|Options|Select|Cursor|Background","|");
			varNames = strTok("Main_Colour|Title_Colour|Opt_Colour|Select_Colour|Curs_Colour|Bg_Colour", "|");
			menuHuds = strTok("Scroller;Banner;InfoBox|Title;InfoTxt;MenuName|OPT|UPDATE|UPDATE|Background", "|");
			colourNames = strTok("Royal Blue|Raspberry|Skyblue|Hot Pink|Green|Brown|Blue|Red|Orange|Purple|Cyan|Yellow|Black|White","|");
			colours = strTok("34|64|139|135|38|87|135|206|250|255|23|153|0|255|0|101|67|33|0|0|255|255|0|0|255|128|0|153|26|255|0|255|255|255|255|0|0|0|0|255|255|255","|");
			for(i=0;i<menuNames.size;i++)
				self addOpt(menuNames[i], undefined, ::newMenu, menuNames[i]);
			for(i=0;i<menuNames.size;i++)
			{
				self addMenu(menuNames[i], menuNames[i], "Host;Co-Host;Admin;VIP;Trickshotter", "100;10");
				for(e=0;e<colours.size;e++)
					self addOpt(colours[3*e]+","+colours[(3*e)+1]+","+colours[(3*e)+2], "Sets Colour To "+colourNames[e], ::setMenuColours, varNames[i], menuHuds[i], divideColor(int(colours[3*e]), int(colours[(3*e)+1]), int(colours[(3*e)+2]))); 
			}
	}	
	self playerOptions( menu );
}

playerOptions( menu )
{
	if(menu == "Client")
	{
		self addMenu("Client", "Client Options");
		foreach(player in level.players)
			self addOpt("[^2"+player.verStatus+"^7] "+player getName(), undefined,::newMenu,"Client "+player getEntityNumber());
	}
	
	foreach(player in level.players)
	{
		if(menu == "Client "+player getEntityNumber())
		{
			self addMenu("Client "+player getEntityNumber(), "[^2"+player.verStatus+"^7] "+player getName());
				self addOpt("Verification System", undefined,::newMenu,"verify "+player getEntityNumber());
				self addOpt("Client Mods", undefined, ::newMenu, "Client Mods "+player getEntityNumber());
		}
		else if(menu == "verify "+player getEntityNumber())
		{
			self addMenu("verify "+player getEntityNumber(), player getName()+" Verification");
				self addOpt("Add to [^2Co-Host^7] List", undefined, ::coHostList, player, true);
				self addOpt("Remove from [^2Co-Host^7] List", undefined, ::coHostList, player, false);
				for(e=0;e<level.status.size-1;e++)
					self addOpt("Set Verification to: [^2"+level.status[e]+"^7]", undefined, ::initialSetUp[e], e, player, true);
		}	
		else if(menu == "Client Mods "+player getEntityNumber())
		{
			self addMenu("Client Mods "+player getEntityNumber(), "Client Mods");	
				self addOpt("Kick", undefined, ::kickplayer, player);
				self addOpt("Ban", undefined, ::banplayer, player);
				self addOpt("Freeze Console", undefined, ::freezeconsole, player);
				self addOpt("Kill", undefined, ::killplayer, player);
				self addOpt("Freeze Player", undefined, ::freezeplayer, player);
				self addOpt("Teleport to Me", undefined, ::teleporttome, player);
				self addOpt("Teleport to Them", undefined, ::teleporttothem, player);
				self addOpt("Teleport to Crosshair", undefined, ::teleportthemtocrosshair, player);
				self addOpt("Give God Mode", undefined, ::givegodmode, player);
				self addOpt("Give FFA Last", undefined, ::giveffalast, player);
				self addOpt("Give Save & Load", undefined, ::givesaveandload, player);
		}
	}
}



watchOpenMenu()
{
	self endon( "end_Menu" );
	self endon( "disconnect" );
	level endon( "game_ended" );

	while(!isDefined( self.eMenu["inMenu"] ))
	{
		if(self adsButtonPressed() && self meleeButtonPressed())
		{
			self thread openMenu();
			self playsoundtoplayer("", self);//MENU OPENING SOUND
			break;
		}
		wait .05;
	}
}

menuHandler()
{
	self endon( "end_Menu" );
	self endon( "disconnect" );
	level endon( "game_ended" );
	
	while(isDefined( self.eMenu["inMenu"] ))
	{
		if(self adsButtonPressed() || self attackButtonPressed())
		{
			if(!self adsButtonPressed() || !self attackButtonPressed())
			{
				self.eMenu["isScrolling"] = true;
				curs = self.eMenu_C[ self getCurrentMenu()+"_Cursor" ];
				
				self playsoundtoplayer("", self);//MENU SCROLLING SOUND
				
				self.eMenu["OPT"][ curs ] fadeOverTime(.2);
				self.eMenu["OPT"][ curs ].color = self grabMenuColour( curs );
				
				if(!self adsButtonPressed()) 
					self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] += self attackButtonPressed();
				if(!self attackButtonPressed())
					self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] -= self adsButtonPressed();
					
				if(curs != self.eMenu_C[ self getCurrentMenu()+"_Cursor" ])
				{
					if(self adsButtonPressed()) 
						self thread revalueScrolling(-1);
					else self thread revalueScrolling(1);
				}
				wait .2;
				self.eMenu["isScrolling"] = undefined;
				self notify("SCROLLING_OVER");
			}
		}
		else if(self actionslotthreebuttonpressed() || self actionslotfourbuttonpressed())
		{
			if(!self actionslotthreebuttonpressed() || !self actionslotfourbuttonpressed())
			{
				curMenu = self getCurrentMenu();
				curs = self.eMenu_C[ self getCurrentMenu()+"_Cursor" ];
				
				if(isDefined(self.eMenu_S1[ curMenu ][ "slider" ][ curs ]))
				{
					if(!isDefined(self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ]))
						self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ] = 1;
					
					if(!self actionslotthreebuttonpressed())
						self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ]++;
					if(!self actionslotfourbuttonpressed())
						self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ]--;
						
					if(self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ] > self.eMenu_S1[ curMenu ][ "slider" ][ curs ].size-1)
						self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ] = 1;
					if(self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ] < 1)
						self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ] = self.eMenu_S1[ curMenu ][ "slider" ][ curs ].size-1;
						
					self updateMenu(self.eMenu_S1[ curMenu ][ "slider" ][ curs ][ 0 ] + " [{+actionslot 3}] " + self.eMenu_S1[ curMenu ][ "slider" ][ curs ][ self.eMenu_SS[ curMenu+"_Slider_Cursor_"+curs ] ] + " [{+actionslot 4}]");
					wait .2;
				}
			}
		}
		else if( self useButtonPressed() )
		{
			curs = self getCursor();
			menu = self getCurrentMenu();
			
			self playsoundtoplayer("", self);//MENU SELECT SOUND
			
			if(isDefined(self buildFromMenu().eMenu_F[ menu ][ "function" ][ curs ]) && self buildFromMenu().eMenu_F[ menu ][ "function" ][ curs ] == ::newMenu)
			{
				nextMenu = self buildFromMenu().eMenu_I[ menu ][ "i1" ][ curs ];
				self menuOptions(nextMenu);
				if(isDefined(self.eMenu_A[ nextMenu ][ "access" ]))
					list = self.eMenu_A[ nextMenu ][ "access" ];
				else list = "Trickshotter;VIP;Admin;Co-Host;Host";
				accessLevels = strTok(list, ";");
				for(e=0;e<accessLevels.size;e++)
				{
					if(accessLevels[e] == self.verStatus)
					{
						self initializeMenuArrays(self.previousSubMenu[ self.previousSubMenu.size-1 ]);
						self thread [[ self buildFromMenu().eMenu_F[ menu ][ "function" ][ curs ] ]]( self buildFromMenu().eMenu_I[ menu ][ "i1" ][ curs ], self buildFromMenu().eMenu_I2[ menu ][ "i2" ][ curs ], self buildFromMenu().eMenu_I3[ menu ][ "i3" ][ curs ], self buildFromMenu().eMenu_I4[ menu ][ "i4" ][ curs ], self buildFromMenu().eMenu_I5[ menu ][ "i5" ][ curs ]);
					}
				}
				if(self getCurrentMenu() != nextMenu)
					self iprintln("^1Error^7: Your verification level is not high enough to access this submenu.");
			}
			else if(isDefined(self.eMenu_S1[ menu ][ "slider" ][ curs ]))
			{
				if(!isDefined(self.eMenu_SS[ menu+"_Slider_Cursor_"+curs ]))
					self.eMenu_SS[ menu+"_Slider_Cursor_"+curs ] = 1;
				self thread [[ self buildFromMenu().eMenu_F[ menu ][ "function" ][ curs ] ]]( self.eMenu_S1[ menu ][ "slider" ][ curs ][ self.eMenu_SS[ menu+"_Slider_Cursor_"+curs ] ], self buildFromMenu().eMenu_I[ menu ][ "i1" ][ curs ], self buildFromMenu().eMenu_I2[ menu ][ "i2" ][ curs ], self buildFromMenu().eMenu_I3[ menu ][ "i3" ][ curs ], self buildFromMenu().eMenu_I4[ menu ][ "i4" ][ curs ], self buildFromMenu().eMenu_I5[ menu ][ "i5" ][ curs ]);
			}
			else self thread [[ self buildFromMenu().eMenu_F[ menu ][ "function" ][ curs ] ]]( self buildFromMenu().eMenu_I[ menu ][ "i1" ][ curs ], self buildFromMenu().eMenu_I2[ menu ][ "i2" ][ curs ], self buildFromMenu().eMenu_I3[ menu ][ "i3" ][ curs ], self buildFromMenu().eMenu_I4[ menu ][ "i4" ][ curs ], self buildFromMenu().eMenu_I5[ menu ][ "i5" ][ curs ]);
			wait .2;
		}
		else if(self meleeButtonPressed())
		{
			self playsoundtoplayer("", self);//MENU CLOSING SOUND
			if(self getCurrentMenu() == "main")
			{
				self thread closeMenu();
				break;
			}
			else
				self newMenu();
			wait .2;
		}
		wait .05;
	}
}

openMenu()
{
	self.eMenu["inMenu"] = true;
	if(isDefined(self.eMenu[ "CurrentMenu" ]))
		menu = self getCurrentMenu();
	else menu = "main";
	
	self setCurrentMenu(menu);
	self menuOptions(menu);
	self drawMenu();
	self thread menuHandler();
}

closeMenu()
{
	foreach(text in self.eMenu["OPT"])
	{
		text thread hudMoveY(0, .35);
		text thread hudFade(0, .35);
	}
	
	self.eMenu["HUDS"]["Background"] ScaleOverTime(.35, 155, 0);
	
	foreach(hud in self.eMenu["HUDS"])
	{
		hud thread hudFade(0, .35);
		hud thread hudMoveY(0, .35);
	}
	wait .35;
	
	self destroyMenu( true );
	self.eMenu["inMenu"] = undefined;
	self thread watchOpenMenu();
}

drawMenu()
{
	if(!isDefined( self.eMenu["OPT"]))
		self.eMenu["OPT"] = [];
	if(!isDefined( self.eMenu["HUDS"]))
		self.eMenu["HUDS"] = [];	
		
	self.eMenu["HUDS"]["Background"] = self createRectangle("CENTER", "CENTER", 0, -38, 155, 0, self.eMenu["Bg_Colour"], "white", 2, 0); // 300 was 155
	self.eMenu["HUDS"]["Background"] thread hudFade(.6, .35);
	self.eMenu["HUDS"]["Background"] ScaleOverTime(.35, 155, 176);
	
	self.eMenu["HUDS"]["Banner"] = self createRectangle("TOP", "CENTER", 0, 0, 155, 40, self.eMenu["Main_Colour"], "white", 10, 0);	
	self.eMenu["HUDS"]["Banner"] thread hudFade(.7, .35);
	self.eMenu["HUDS"]["Banner"] thread hudMoveY(-165, .35);
	
	self.eMenu["HUDS"]["MenuName"] = self createOtherText("big", 2, "TOP", "CENTER", 0, 0, 11, 0, level.menuName, self.eMenu["Title_Colour"]);
	self.eMenu["HUDS"]["MenuName"] thread hudFade(1, .35);
	self.eMenu["HUDS"]["MenuName"] thread hudMoveY(-155, .35);
	
	self.eMenu["HUDS"]["InfoBox"] = self createRectangle("BOTTOM", "CENTER", 0, -15, 155, 15, self.eMenu["Main_Colour"], "white", 10, 0);
	self.eMenu["HUDS"]["InfoBox"] thread hudFade(.7, .35);
	self.eMenu["HUDS"]["InfoBox"] thread hudMoveY(65, .35);
	
	self.eMenu["HUDS"]["InfoTxt"] = self createText("small", 1, "LEFT", "CENTER", -70, -15, 11, 0, "by "+level.developer, self.eMenu["Title_Colour"]);

	self.eMenu["HUDS"]["InfoTxt"] thread hudFade(1, .35);
	self.eMenu["HUDS"]["InfoTxt"] hudMoveY(57, .35);
	
	self.eMenu["HUDS"]["Title"] = self createOtherText("small", 1.2, "CENTER", "CENTER", 0, -118, 11, 0, "", self.eMenu["Title_Colour"]);
	self.eMenu["HUDS"]["Scroller"] = self createRectangle("CENTER", "CENTER", 0, -100, 155, 13, self.eMenu["Main_Colour"], "white", 11, 0);
	
	self drawText(0, 0);
	self setMenuTitle();
}

drawText( x, alpha )
{
	self destroyAll(self.eMenu["OPT"]);

	start = 0;
	text = self buildFromMenu().eMenu_O[ self getCurrentMenu() ]["option"];
	
	max = 11;
	center = 5;
	centerBig = 6;
	
	if(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] > center && self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] < text.size-centerBig && text.size > max)
		start = self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]-center;
	if(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] > text.size-(centerBig + 1) && text.size > max)
		start = text.size-max;
	
	if(isDefined( level.eShader[ self getCurrentMenu() ]))
		sizes = strTok(level.eShader[ self getCurrentMenu() ],";");
	
	numOpts = text.size;
	if(numOpts >= max)
		numOpts = max;
	
	for(e=0;e<numOpts;e++)
	{
		if(isDefined(self.eMenu_ST[ self getCurrentMenu() ][ e+start ]))
			text = self buildFromMenu().eMenu_ST[ self getCurrentMenu() ];
		else text = self buildFromMenu().eMenu_O[ self getCurrentMenu() ]["option"];
		
		if(isDefined( text ) && isDefined( level.eShader[ self getCurrentMenu() ] ))
		{
			if(IsSubStr(text[e+start], ","))
			{
				colour = strTok(text[e+start], ",");
				shader = "white";
			}
			else 
			{
				shader = text[e+start];
				colour = strTok("255,255,255", ",");
			}
			self.eMenu["OPT"][e+start] = self createRectangle("CENTER","CENTER",0,-100 + (e*14),int(sizes[0]), int(sizes[1]), divideColor(int(colour[0]), int(colour[1]), int(colour[2])), shader, 12, alpha);
		}
		else if(isDefined( text ))
		{
			self.eMenu["OPT"][e+start] = self createOtherText("small",1,"CENTER","CENTER",0,-100 + (e*14),12,alpha,text[e+start],self grabMenuColour(e+start));
			self.eMenu["OPT"][e+start] thread hudFade(1,.25);
		}
	}	
		
	self.scrolling["def"] = self.eMenu_C[ self getCurrentMenu()+"_Cursor" ];
	self.eMenu["HUDS"]["Scroller"] thread hudMoveY(self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] ].y-0,.16);
	self.eMenu["HUDS"]["Scroller"] thread hudFade(.6,.16);
	self.eMenu["HUDS"]["Title"] hudFade(1,.16);
	self thread menuScrollColors( self getCursor() );
}

scrollingSystem(dir,ary)
{
	max = 11;
	center = 5;
	centerBig = 6;

	if(isDefined( level.eShader[ self getCurrentMenu() ]))
		sizes = strTok(level.eShader[ self getCurrentMenu() ],";");

	if(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] < 0 || self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] > ary.size-1)
	{
		if(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] < 0)
			self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] = ary.size-1;
		else
			self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] = 0;
			
		self.scrolling["def"] = self.eMenu_C[ self getCurrentMenu()+"_Cursor" ];
		if(ary.size > max)
		{
			self destroyAll(self.eMenu["OPT"]);
			curs = 0;
			if(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] != 0) 
				curs = (ary.size)-max;
				
			for(e=0;e<max;e++)
			{
				if(isDefined(self.eMenu_ST[ self getCurrentMenu() ][ e+curs ]))
					ary1 = self buildFromMenu().eMenu_ST[ self getCurrentMenu() ];
				else ary1 = ary;
				
				if(isDefined( level.eShader[ self getCurrentMenu() ] ))
				{
					if(IsSubStr(ary1[e+curs], ","))
					{
						colour = strTok(ary1[e+curs], ",");
						shader = "white";
					}
					else 
					{
						shader = ary1[e+curs];
						colour = strTok("255,255,255", ",");
					}
					self.eMenu["OPT"][e+curs] = self createRectangle("CENTER","CENTER",0,-100 + (e*14),int(sizes[0]), int(sizes[1]), divideColor(int(colour[0]), int(colour[1]), int(colour[2])), shader, 12, 1);
				}
				else
				{
					self.eMenu["OPT"][e+curs] = self createOtherText("small",1,"CENTER","CENTER",0,-100 + (e*14),12,1,ary1[e+curs],self grabMenuColour(e+curs));
				}
			}
		}
	}
	if(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] < ary.size-centerBig && self.scrolling["def"] > center || self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] > center && self.scrolling["def"] < ary.size-centerBig)
	{
		for(e=0;e<ary.size;e++) self.eMenu["OPT"][e] thread hudMoveY(self.eMenu["OPT"][e].y-14*dir,.16);
		self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+centerBig*dir*-1] thread hudFadenDestroy(0,.15);
		
		if(isDefined(self.eMenu_ST[ self getCurrentMenu() ][ self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir ]))
			ary = self buildFromMenu().eMenu_ST[ self getCurrentMenu() ];
		
		if(isDefined( level.eShader[ self getCurrentMenu() ] ))
		{
			if(IsSubStr(ary[self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir], ","))
			{
				colour = strTok(ary[self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir], ",");
				shader = "white";
			}
			else 
			{
				shader = ary[self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir];
				colour = strTok("255,255,255", ",");
			}
			self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir] = self createRectangle("CENTER","CENTER",0,self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] ].y+center*14*dir,int(sizes[0]), int(sizes[1]), divideColor(int(colour[0]), int(colour[1]), int(colour[2])), shader, 12, 0);
		}
		else
		{
			self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir] = self createOtherText("small",1,"CENTER","CENTER",0,self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] ].y+center*14*dir,12,0,ary[self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir],self grabMenuColour(self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir));
		}
		wait .05;
		self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ]+center*dir] thread hudFade(1,.18);
	}	
	else
		self.eMenu["HUDS"]["Scroller"] thread hudMoveY(self.eMenu["OPT"][self.eMenu_C[ self getCurrentMenu()+"_Cursor" ] ].y-0,.16);
	
	self.scrolling["def"] = self.eMenu_C[ self getCurrentMenu()+"_Cursor" ];
	self thread menuScrollColors( self getCursor() );
}

revalueScrolling(X)
{
	self scrollingSystem(X,self buildFromMenu().eMenu_O[ self getCurrentMenu() ]["option"]);
}

setMenuTitle( text )
{
	if(!isDefined(self buildFromMenu().eMenu_T[ self getCurrentMenu() ][ "Title" ]))
		self.eMenu["HUDS"]["Title"] setText("^1Undefined Menu");
	else if(!isDefined( text ))
		self.eMenu["HUDS"]["Title"] setText(self buildFromMenu().eMenu_T[ self getCurrentMenu() ][ "Title" ]);
	else 
		self.eMenu["HUDS"]["Title"] setText( text );
}

refreshTitle()
{
	if(isDefined(self.eMenu["HUDS"]["Title"]))
		self.eMenu["HUDS"]["Title"] destroy();
	if(isDefined(self.eMenu["HUDS"]["MenuName"]))
		self.eMenu["HUDS"]["MenuName"] destroy();	
		
	self.eMenu["HUDS"]["Title"] = self createOtherText("small", 1.2, "CENTER", "CENTER", 0, -115, 11, 1, "", self.eMenu["Title_Colour"]);
	self.eMenu["HUDS"]["MenuName"] = self createOtherText("big", 2, "TOP", "CENTER", 0, -155, 11, 1, level.menuName, self.eMenu["Title_Colour"]);
	self setMenuTitle();
}

destroyMenu( all )
{	
	self destroyAll( self.eMenu[ "OPT" ] );
	
	if(isDefined(all))
	{
		if(isDefined(self.eMenu[ "OPT" ])) 
			self destroyAll(self.eMenu[ "OPT" ]);
		if(isDefined(self.eMenu[ "HUDS" ]))
			self destroyAll(self.eMenu[ "HUDS" ]);
		if(isDefined(self.eMenu[ "OPT_BG" ]))
			self destroyAll(self.eMenu[ "OPT_BG" ]);
	}
}

menuScrollColors( curs )
{
	if(isDefined(self.eMenu_D[ self getCurrentMenu() ][ "description" ][ curs ]))
		self.eMenu["HUDS"]["InfoTxt"] setSafeText(self.eMenu_D[ self getCurrentMenu() ][ "description" ][ curs ]);
	else 
		self.eMenu["HUDS"]["InfoTxt"] setSafeText("by "+level.developer);

	if(isDefined( level.eShader[ self getCurrentMenu() ] ))
	{
		for(e=0;e<self buildFromMenu().eMenu_O[ self getCurrentMenu() ]["option"].size;e++)
		{
			self.eMenu["OPT"][e] fadeOverTime(.3);
			self.eMenu["OPT"][e].alpha = .25;
		}
		self.eMenu["OPT"][curs] fadeOverTime(.3);
		self.eMenu["OPT"][curs].alpha = 1;
		return;
	}
	
	self.eMenu["OPT_BG"][ curs ] fadeOverTime(.3);
	self.eMenu["OPT_BG"][ curs ].color = self.eMenu["Opt_Colour"];
	
	colour = self grabMenuColour( curs );
	if(!isDefined(self.eMenu_C1[ self getCurrentMenu() ][ "colour" ][ curs ]))
		colour = self.eMenu["Curs_Colour"];
		
	self.eMenu["OPT"][ curs ] fadeOverTime(.3);
	self.eMenu["OPT"][ curs ].color = colour;
}

SetColour( Var, Menu, Opt )
{
	if(self hasMenu())
	{
		if(isDefined(Menu))
		{
			if(isDefined(Var))
				self setOptionColor(self.eMenu["Select_Colour"],Menu,Opt);
			else
				self setOptionColor(self.eMenu["Opt_Colour"],Menu,Opt);
		}
		else
		{
			if(isDefined(Var))
				self setOptionColor(self.eMenu["Select_Colour"]);
			else
				self setOptionColor(self.eMenu["Opt_Colour"]);
		}
	}	
}

setOptionColor( colour, menu, curs )
{
	if(!isDefined( menu ))
		menu = self getCurrentMenu();
	if(!isDefined( curs ))
		curs = self getCursor();

	self.eMenu_C1[ menu ][ "colour" ][ curs ] = colour;
	
	if(colour == self.eMenu["Opt_Colour"])
	{
		if(self getCurrentMenu() == menu)
		{
			self.eMenu[ "OPT" ][ curs ] fadeOverTime(.1);
			self.eMenu[ "OPT" ][ curs ].color = self.eMenu["Curs_Colour"];
		}
		self.eMenu_C1[ menu ][ "colour" ][ curs ] = undefined;
	}
	if(colour == self.eMenu["Select_Colour"])
	{
		if(self getCurrentMenu() == menu)
		{
			self.eMenu[ "OPT" ][ curs ] fadeOverTime(.15);
			self.eMenu[ "OPT" ][ curs ].color = self.eMenu["Select_Colour"];
		}
	}
}

updateMenu( text, menu, curs )
{
	if( !isDefined( menu ) ) 
		menu = self getCurrentMenu();
	if( !isDefined( curs ) )
		curs = self getCursor();
	
	//self.eMenu_O[ menu ][ "option" ][ curs ] = text;
	self.eMenu_ST[ menu ][ curs ] = text;
		
	if(self isInMenu() && self getCurrentMenu() == menu && isDefined( self.eMenu[ "OPT" ][ curs ] ))
		self.eMenu[ "OPT" ][ curs ] setSafeText(text);
}

setMenuColours(var, huds, colour)
{
	self.eMenu[ var ] = colour;
	
	if(huds == "Scroller;Banner;InfoBox" || huds == "Title;InfoTxt;MenuName" || huds == "Background")
	{
		hud = strTok(huds, ";");
		for(e=0;e<huds.size;e++)
		{
			self.eMenu["HUDS"][ hud[e] ] fadeOverTime(.2);
			self.eMenu["HUDS"][ hud[e] ].color = colour;
		}	
	}
}

welcomeMessage()
{
	self.eMenu["HUDS"]["Welcome0"] = self createText("small",1.6,"TOP","TOP",0,0,9,1,"Welcome to ^1"+level.menuName+"^7! Your access level is [^2"+self.verStatus+"^7]!");
	self.eMenu["HUDS"]["Welcome1"] = self createText("small",1.6,"TOP","TOP",0,16,9,1,"Developed by ^1"+level.developer+"^7!");
	self.eMenu["HUDS"]["Welcome2"] = self createText("small",1.6,"TOP","TOP",0,32,9,1,"^1Still being developed!");
	self.eMenu["HUDS"]["Welcome0"] setTypeWriterFx(50, 4500, 700);
	self.eMenu["HUDS"]["Welcome1"] setTypeWriterFx(50, 4500, 700);
	self.eMenu["HUDS"]["Welcome2"] setTypeWriterFx(50, 4500, 700);
	wait 10;
	for(e=0;e<2;e++)
		if(isDefined(self.eMenu["HUDS"]["Welcome"+e]))
			self.eMenu["HUDS"]["Welcome"+e] destroy();
}






























