inputlayouts = 
{
	{
		name = "PositionOnly",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} }
		},
	},
	
	{
		name = "FullBright",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
		},
	},

	{
		name = "SimpleVertex",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
			{ component = Diffuse, type = Colour, usageFlags = {} },
		},
	},

	{
		name = "Standard",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Binormal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Tangent, type = Colour, usageFlags = { CompressedDirection } },
		},
	},
	
	{
		name = "StandardSkinned",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Binormal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Tangent, type = Colour, usageFlags = { CompressedDirection } },
			{ component = BlendWeight, type = Colour, usageFlags = {} },
			{ component = BlendIndex, type = UByte4, usageFlags = {} },
		},
	},
	
	{
		name = "Building",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs } },
			{ component = UV1, type = Vector2f, usageFlags = { AlphaTestUVs, NormalMapUVs } },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Binormal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Tangent, type = Colour, usageFlags = { CompressedDirection } },
		},
	},
	
	{
		name = "BuildingSkinned",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs } },
			{ component = UV1, type = Vector2f, usageFlags = { AlphaTestUVs, NormalMapUVs } },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Binormal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Tangent, type = Colour, usageFlags = { CompressedDirection } },
			{ component = BlendWeight, type = Colour, usageFlags = {} },
			{ component = BlendIndex, type = UByte4, usageFlags = {} },
		},
	},

	{
		name = "TerrainObject",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Binormal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Tangent, type = Colour, usageFlags = { CompressedDirection } },
		},
	},
	
	{
		name = "TerrainObjectSkinned",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Binormal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Tangent, type = Colour, usageFlags = { CompressedDirection } },
			{ component = BlendWeight, type = Colour, usageFlags = {} },
			{ component = BlendIndex, type = UByte4, usageFlags = {} },
		},
	},
	
	{
		name = "FXShader",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Diffuse, type = Colour, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
			{ component = UV2, type = Vector2f, usageFlags = { } },
			{ component = UV4, type = Vector3f, usageFlags = { } },
		},
	},
	
	{
		name = "FXShaderBatched",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Diffuse, type = Colour, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
			{ component = UV1, type = Vector2f, usageFlags = { } },
			{ component = UV2, type = Vector2f, usageFlags = { } },
			{ component = UV3, type = Vector4f, usageFlags = { } },
			{ component = UV4, type = Vector4f, usageFlags = { } },
			{ component = UV5, type = Vector3f, usageFlags = { } },
		},
	},

	{
		name = "FXShaderDisplacement",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
			{ component = Diffuse, type = Colour, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs } },
		},
	},

	{
		name = "TerrainWater",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
		},
	},
	
	{
		name = "TerrainSplat",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { } },
			{ component = Normal, type = Colour, usageFlags = { CompressedDirection } },
		},
	},

	{
		name = "TerrainStrip",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector2f, usageFlags = { AlphaTestUVs } },
			{ component = Diffuse, type = Colour, usageFlags = {} },
			{ component = Normal, type = Vector3f, usageFlags = { } },
			{ component = Binormal, type = Vector3f, usageFlags = { } },
			{ component = Tangent, type = Vector3f, usageFlags = { } },
		},
	},
	
	{
		name = "TerrainTile",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Vector3f, usageFlags = { } },
		},
	},

	{
		name = "NISTool",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Colour, usageFlags = { UniqueUVs, AlphaTestUVs, NormalMapUVs, CompressedUVs } },
			{ component = Diffuse, type = Colour, usageFlags = {} },
		},
	},
	{
		name = "RainSplashesVSInput",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = Normal, type = Vector3f, usageFlags = { } },
			{ component = UV0, type = Vector2f, usageFlags = { Base } },
			{ component = UV1, type = Vector4f, usageFlags = { OffsetAgeType } },
		},
	},
	{
		name = "RainVSInput",
		components = 
		{
			{ component = Position, type = Vector3f, usageFlags = {} },
			{ component = UV0, type = Vector3f, usageFlags = { Direction } },
			{ component = UV1, type = Vector3f, usageFlags = { VertexIndex } },
		},
	},
}

