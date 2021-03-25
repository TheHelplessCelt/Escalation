
-- where to look for the textures used for the fx
TexturesPath="art/scenarios/textures/rainsplashes/"

-- size of the texture pack used for the splash fx (textures that can't be packed into this map
-- will get the default  "badtexturefx" texture, default texture pack size is 1024
TexturePackSize=1024

-- How much offset we want from the surface to avoid z-fighing artefacts 
-- on fx that follow the surface
SurfaceOffset=.1

-- Size of the splash box area (default=128)
EmitterTileSize=128

-- Maximum number of frame to skip for an object to generate a splash 
-- (worst case for really small objects), frames skipped is:
-- max(0, MaxSkippedFrames*maximum effect age-objectsize)
-- if result is less or equal to zero it will create a splash every single frame.
MaxSkippedFrames=20

-- percentange of how many particle positions are created every frame for an object 
-- this will be biased by the area covered by each object 100.0% will generate as many particles as the object area.
-- The bigger this number is the more the objects close to the camera will tend to grab
-- splashes from the allowed new particles per frame (giving a nice halo effect) but it will also means
-- that objects further away could end up getting no splashes, with really big objects close
-- to the camera. Defaul value 1% (that guarantees at least 1 new particle per object)
ParticlesPerFramePerObject=1.0

-- this multiplies the particle positions per object by this amount 
-- thus allowing more randomness on the splashes per object
RequestedParticlesPerObjectFactor=1

-- Effects definition list: each effect has to have a unique name, and must have
-- at least one type of effect defined: 
--   billboard (always faces the camera)
--   billboardY (faces the camera but only rotating around the y axis)
--   followsurface (uses the surface normal (terrain and water only) to determine the texture quad orientation)
--   endSize, and texture parameters must always be defined for each type
--   endSize, is the maximum size of the billboard when it reaches the maximum age
--   startSize, is the initial size of the billboard at time 0 (optional, default value = {0,0} )
--   startAlpha, alpha at time 0 (optional, default 1 = quad is 100% non transparent)
--   endAlpha,  alpha at the maximum particle age (optional, default 0 = quad is completly transparent)
--   surfaceOffset, per effect offset added to the global offset for each effect (optional, default value = 0 )
--   uvTiles, this value indicates how many tiles there are on a texture, u and v tiling frequency can be different
--            (optional, default value = {1,1}), if the value is defined then what tile of the texture is
--            rendered is selected randomly for each particle. 
--            (for testing purposes a sample 2 by 2 tiles texture called tilingTest is in p4)
SplashEffects=
{
	{
		name="default",
		billboard=
		{
			texture="rain_ripple_ring_00",
			endSize= {5,5},
			startSize= {1.5,1.5},
			startAlpha= 1,
			endAlpha= 0,
			-- to test if tiling is working set the texture to "tilingTest" and uncomment the following line
			-- uvTiles= {2,2},
		},
	},
	{
		name="splashwater",
		billboardY=
		{
			texture="water_splash_ring_up_01",
			endSize= {3,3},
			startAlpha= .6,
			endAlpha= 0,
		},
		followsurface=
		{
			texture="rain_ripple_ring_00",
			endSize= {2,2},
			startAlpha= .6,
			endAlpha= 0,
		},
	},
	{
		name="splashtanks",
		billboard=
		{
			texture="water_splash_soft_glow_01",
			endSize= {3,3},
			startSize= {1,1},
			startAlpha= .8,
			endAlpha= 0,
		},
		billboardY=
		{
			SurfaceOffset=-0.5,
			texture="water_splash_ring_up_00",
			endSize= {1,1.5},
			startSize= {.25,.25},
			startAlpha= .5,
			endAlpha= 0,
		},
	},
	{
		name="splashsoldier",
		billboard=
		{
			SurfaceOffset=-2.5,
			texture="water_splash_soft_glow_00",
			endSize= {0,0},
		},
		followsurface=
		{
			SurfaceOffset=-2.5,
			texture="rain_noise_ring_00",
			endSize= {0,0},
		},
		billboardY=
		{
			SurfaceOffset=-2.5,
			texture="water_splash_ring_up_00",
			endSize= {0,0},
		},
	},
	{
		name="splashfoilage",
		billboard=
		{
			texture="water_splash_soft_glow_00",
			endSize= {0,0},
		},
	},
}

-- The number of weather types here should correspond to the number of material mapping weather levels
WeatherTypes=
{
	{
		id = "Rain1",
		displayName = "Rain",
	},
	
	{
		id = "Rain2",
		displayName = "Sand",
	},
	
	{
		id = "Rain3",
		displayName = "Tyranoformation",
	},
}

-- list of materials and corresponding effects for each weather level (not counting the 
-- neutral level. First is the material name, second is the list of splash effects 
-- (from the splash effects section on this file) e.g:
--    { "material",   {"fxlightrain","fxmediumrain","fxheavyrain"} ),
-- If a material is not defined here or an object has no material associated it won't
-- have any splashes, except for the terrain that gets the default splash 
-- if default is defined.
MaterialID_Mappings =
{
-- terrain materials
-- default has to be defined otherwise nis outside the the playable are won't get any splashes
	--{"default",				{"default","default","default"} },
	{"desert_craters",			{"default","default","default"} },
	{"dirt",				{"default","default","default"} },
	{"grass",				{"default","default","default"} },
	{"jungle_craters",			{"default","default","default"} },
	{"metal",				{"default","default","default"} },
	--{"plant",				{"default","default","default"} },
	{"sand",				{"default","default","default"} },
	{"stone",				{"default","default","default"} },
	{"tyrannoformation",			{"default","default","default"} },
	{"urban_craters",			{"default","default","default"} },
	{"water",				{"splashwater","splashwater","splashwater"} },
	
	
-- Objects materials 
	--{"dirt",				{"default","default","default"} },
	--{"metal",				{"default","default","default"} },
	--{"rock",				{"default","default","default"} },
	--{"sand",				{"default","default","default"} },
	--{"stone",				{"default","default","default"} },
	--{"stone_red",				{"default","default","default"} },
	--{"tyrannoformation",			{"default","default","default"} },
	--{"water",				{"default","default","default"} },
	--{"wood",				{"default","default","default"} },
	--{"wood",				{"splashfoilage","splashfoilage","splashfoilage"} },
}
