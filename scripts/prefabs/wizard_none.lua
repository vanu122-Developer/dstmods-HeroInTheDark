local assets =
{
	Asset( "ANIM", "anim/wizard.zip" ),
	Asset( "ANIM", "anim/ghost_wizard_build.zip" ),
}

local skins =
{
	normal_skin = "wizard",
	ghost_skin = "ghost_wizard_build",
}

return CreatePrefabSkin("wizard_none",
{
	base_prefab = "wizard",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"WIZARD", "CHARACTER", "BASE"},
	build_name_override = "wizard",
	rarity = "Character",
})