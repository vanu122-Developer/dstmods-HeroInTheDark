PrefabFiles = {
    "darkknight",
    "darkknight_none",
	"barb",
	"barb_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/barb.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/barb.xml" ),

    Asset( "IMAGE", "images/saveslot_portraits/darkknight.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/darkknight.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/barb.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/barb.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/darkknight.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/darkknight.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/barb_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/barb_silho.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/darkknight_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/darkknight_silho.xml" ),

    Asset( "IMAGE", "bigportraits/barb.tex" ),
    Asset( "ATLAS", "bigportraits/barb.xml" ),

    Asset( "IMAGE", "bigportraits/darkknight.tex" ),
    Asset( "ATLAS", "bigportraits/darkknight.xml" ),
	
	Asset( "IMAGE", "images/map_icons/barb.tex" ),
	Asset( "ATLAS", "images/map_icons/barb.xml" ),

    Asset( "IMAGE", "images/map_icons/darkknight.tex" ),
	Asset( "ATLAS", "images/map_icons/darkknight.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_barb.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_barb.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_darkknight.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_darkknight.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_barb.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_barb.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_ghost_darkknight.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_darkknight.xml" ),

	Asset( "IMAGE", "images/avatars/self_inspect_barb.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_barb.xml" ),

    Asset( "IMAGE", "images/avatars/self_inspect_darkknight.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_darkknight.xml" ),
	
	Asset( "IMAGE", "images/names_barb.tex" ),
    Asset( "ATLAS", "images/names_barb.xml" ),

    Asset( "IMAGE", "images/names_darkknight.tex" ),
    Asset( "ATLAS", "images/names_darkknight.xml" ),
	
	Asset( "IMAGE", "images/names_gold_barb.tex" ),
    Asset( "ATLAS", "images/names_gold_barb.xml" ),

    Asset( "IMAGE", "images/names_gold_darkknight.tex" ),
    Asset( "ATLAS", "images/names_gold_darkknight.xml" ),
}

--Add on icon in map
AddMinimapAtlas("images/map_icons/barb.xml")
AddMinimapAtlas("images/map_icons/darkknight.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.darkknight = "The Shadow Knight"
STRINGS.CHARACTER_NAMES.darkknight = "Shadow Knight"
STRINGS.CHARACTER_DESCRIPTIONS.darkknight = "*1. He is so Evil!\n*2. Sun makes good things being everywhere! He loses sanity during daytime.\n*3. Hopefully, dusk and night does not bring good things. He doesn't lose sanity during dusk and night..."
STRINGS.CHARACTER_QUOTES.darkknight = "\"Nothing will stop the righteous!\""
STRINGS.CHARACTER_SURVIVABILITY.darkknight = "Slim"


STRINGS.CHARACTER_TITLES.barb = "The Barbarian"
STRINGS.CHARACTER_NAMES.barb = "Barbarian"
STRINGS.CHARACTER_DESCRIPTIONS.barb = "*1. The Lower his life the stronger his attacks\n*2. Chops / mines 50% faster, is more hungry\n*3. Can eat raw meats with no neg effects\n*4. RAGE!"
STRINGS.CHARACTER_QUOTES.barb = "\"Don't get me angry!\""
STRINGS.CHARACTER_SURVIVABILITY.barb = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.DARKKNIGHT = require "speech_darkknight"

STRINGS.CHARACTERS.BARB = require "speech_barb"



-- The character's name as appears in-game 
STRINGS.NAMES.DARKKNIGHT = "Dark Knight"
STRINGS.SKIN_NAMES.darkknight = "Dark Knight"

STRINGS.NAMES.BARB = "Barb"
STRINGS.SKIN_NAMES.barb = "Barb"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("barb", "MALE", skin_modes)
AddModCharacter("darkknight", "MALE", skin_modes)