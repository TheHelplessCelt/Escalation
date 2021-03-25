MipLevels_NumConfig = 4;

MipLevels =
{
-- The following is to determine how many mips to drop:
-- maxDropLevels = Diffuse, Emissive, Normal, Specular, Occlusion, TeamColour, Unclassified
-- For each texture type, specify the # of mips to drop for quality settings: Low, Medium, High, Ultra
--																				  Diffuse (DIF)    Emissive (EMI)   Normal (NRM)     Specular (SPC)   Occlusion (OCL)     TeamColour (TEM) Unclassified
	{	directory = "Art\\Race_Chaos\\Structures\\",            maxDropLevels = { { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 12, 12, 12, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, },	},
	{	directory = "Art\\Race_Eldar\\Structures\\",		    maxDropLevels = { { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 12, 12, 12, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, },	},
	{	directory = "Art\\Race_IG\\Structures\\",			    maxDropLevels = { { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 12, 12, 12, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, },	},
	{	directory = "Art\\RACE_MARINE\\structures\\",		    maxDropLevels = { { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 12, 12, 12, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, },	},
	{	directory = "Art\\Race_Ork\\structures\\ORK_BASE\\",    maxDropLevels = { { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 12, 12, 12, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, },	},
	{	directory = "Art\\Race_Ork\\structures\\",			    maxDropLevels = { { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 12, 12, 12, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, },	},
	{	directory = "Art\\Race_Tyranid\\Structures\\",		    maxDropLevels = { { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, { 12, 12, 12, 0, }, { 1, 1, 0, 0, }, { 1, 1, 0, 0, }, },	},
	{	directory = "Art\\Race_Chaos\\",					    maxDropLevels = { { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 12, 12, 12, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, },	},
	{	directory = "Art\\Race_Eldar\\",					    maxDropLevels = { { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 12, 12, 12, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, },	},
	{	directory = "Art\\Race_IG\\",						    maxDropLevels = { { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 12, 12, 12, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, },	},
	{	directory = "Art\\RACE_MARINE\\",					    maxDropLevels = { { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 12, 12, 12, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, },	},
	{	directory = "Art\\Race_Ork\\",						    maxDropLevels = { { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 12, 12, 12, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, },	},
	{	directory = "Art\\Race_Tyranid\\",					    maxDropLevels = { { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, { 12, 12, 12, 0, }, { 2, 2, 1, 0, }, { 2, 2, 1, 0, }, },	},
    
	--  don't let the texture manager drop any mips for the fx, they drop mips themselves based on fx config separate from texture detail
	{	directory = "Art\\FX\\",								maxDropLevels = { { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, },    { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, },	},
    
	{	directory = "Art\\UI\\",								maxDropLevels = { { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, },    { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, },	},
	{	directory = "Art\\Terrain_Textures\\",					maxDropLevels = { { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, { 12, 12, 12, 0, }, { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, },	},
	{	directory = "Art\\Badges\\",							maxDropLevels = { { 1, 0, 0, 0, }, { 1, 0, 0, 0, }, { 1, 0, 0, 0, }, { 1, 0, 0, 0, }, { 1, 0, 0, 0, },    { 1, 0, 0, 0, }, { 1, 0, 0, 0, }, },	},
	{	directory = "Art\\",									maxDropLevels = { { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, { 12, 12, 12, 0, }, { 2, 1, 1, 0, }, { 2, 1, 1, 0, }, },	},
	{	directory = "UI\\",										maxDropLevels = { { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, { 0, 0, 0, 0, },    { 0, 0, 0, 0, }, { 0, 0, 0, 0, }, },	},
}
