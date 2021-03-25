minImpactNormImpulse = 2.0 		--  minimum impulse normal to point of contact before we trigger an impact
minImpactNormVelocity = 0.02 		--  minimum impulse normal to point of contact before we trigger an impact
impactTimeout = 0.5				-- an impact expires after x seconds after which we can trigger another one
minScrapeTangentVelocity = 2.00		-- minimum velocity tangent to contact normal before a contact is considered a scrape
maxScrapeInactiveTimer = 0.5		-- x seconds of inactivity before a scrape stops
minScrapeStartTimer = 0.0667		-- x seconds of stable scrape signal before we trigger a scrape
maxScrapeStaleContactInfo = 0.2	-- x seconds before scrape contact info is considered stale (CAUTION: tricky value to tune)
maxNumImpacts = 8					-- the maximum number of impacts per timeout period
maxNumScrapes = 4					-- sames as m_maxNumImpacts but for scrapes
maxMassSmall = 8
maxMassMedium = 60

-- world values
gravityVector =
{
	0,
	-9.8,
	0,
}

maxWorldSize = 1100

SystemSpecs =
{
	MinSpec =
	{
		numAllowedOrphans = 50,
		numAllowedOrphansAlt1 = 15,
		numAllowedPhyFX = 50,
		numAllowedPhantoms = 50,
	}, 
	
	MidSpec =
	{
		numAllowedOrphans = 100,
		numAllowedOrphansAlt1 = 30,
		numAllowedPhyFX = 100,
		numAllowedPhantoms = 100,
	}, 
	
	HighSpec =
	{
		numAllowedOrphans = 150,
		numAllowedOrphansAlt1 = 50,
		numAllowedPhyFX = 150,
		numAllowedPhantoms = 100,
	}, 
}


terrainMaterials = 
{
	{
		name = "<default>",
		restitution = 0.1,
		friction = 0.5,
	},
	
	{
		name = "grass",
		restitution = 0.1,
		friction = 0.8,
	},
	
	{
		name = "cement",
		restitution = 0.9,
		friction = 0.4,
	},
	
	{
		name = "crater_concrete",
		restitution = 0.7,
		friction = 0.5,
	},
	
	{
		name = "crater_debris",
		restitution = 0.9,
		friction = 0.1,
	},
	
	{
		name = "crater_dirt",
		restitution = 0.4,
		friction = 0.7,
	},
	
	{
		name = "crater_grass",
		restitution = 0.2,
		friction = 0.5,
	},
	
	{
		name = "crater_sand",
		restitution = 0,
		friction = 1.0,
	},
	
	{
		name = "crater_stone",
		restitution = 0.9,
		friction = 0.6,
	},
	
	{
		name = "dirt",
		restitution = 0.4,
		friction = 0.5,
	},
	
	{
		name = "ditch",
		restitution = 0.4,
		friction = 0.7,
	},
	
	{
		name = "field",
		restitution = 0,
		friction = 1.0,
	},
	
	{
		name = "mud",
		restitution = 0,
		friction = 0.2,
	},
	
	{
		name = "road_asphalt",
		restitution = 0.8,
		friction = 0.4,
	},
	
	{
		name = "road_dirt",
		restitution = 0.5,
		friction = 0.5,
	},
	
	{
		name = "rubble",
		restitution = 0.9,
		friction = 0.1,
	},
	
	{
		name = "sand",
		restitution = 0,
		friction = 1.0,
	},
	
	{
		name = "stone_natural",
		restitution = 0.8,
		friction = 0.3,
	},
	
	{
		name = "stone_road",
		restitution = 0.7,
		friction = 0.5,
	},
	
	{
		name = "urban",
		restitution = 0.7,
		friction = 0.4,
	},
	
	{
		name = "urban_narrow",
		restitution = 0.6,
		friction = 0.4,
	},
}