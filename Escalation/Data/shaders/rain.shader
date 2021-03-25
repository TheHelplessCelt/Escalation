variable_list =
{
	{
		name = "diffuseTex",
		type = Texture,
		mode = Dynamic
	},

	{
		name = "RainParticleOffsets",
		type = Vector2f,
		mode = Dynamic,
		length = 4		
	},	

	{
		name = "RainParticleUVs",
		type = Vector2f,
		mode = Dynamic,
		length = 4		
	},	

	
	{
		name = "RainEmitterVolumeSize",
		type = Vector3f,
		mode = Dynamic
	},

	{
		name = "RainHalfEmitterVolumeSize",
		type = Vector3f,
		mode = Dynamic
	},

	{
		name = "RainTileFractionalPart",
		type = Vector2f,
		mode = Dynamic
	},

};

script_list =
{
	{
		script = "rain.fx",
	},
};

inputlayouts = 
{
	"RainVSInput"
};
