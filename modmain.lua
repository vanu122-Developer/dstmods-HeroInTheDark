PrefabFiles = {
    --Characters
    "darkknight",
    "darkknight_none",
	"barb",
	"barb_none",
    "wizard",
    "wizard_none",
    
    --Weapon
    "dksword",
    "holysword"
}

Assets = {

    -- Character Barbarian
    Asset( "IMAGE", "images/saveslot_portraits/barb.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/barb.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/barb.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/barb.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/barb_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/barb_silho.xml" ),

    Asset( "IMAGE", "bigportraits/barb.tex" ),
    Asset( "ATLAS", "bigportraits/barb.xml" ),

    Asset( "IMAGE", "images/map_icons/barb.tex" ),
	Asset( "ATLAS", "images/map_icons/barb.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_barb.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_barb.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_ghost_barb.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_barb.xml" ),

    Asset( "IMAGE", "images/avatars/self_inspect_barb.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_barb.xml" ),

    Asset( "IMAGE", "images/names_barb.tex" ),
    Asset( "ATLAS", "images/names_barb.xml" ),

    Asset( "IMAGE", "images/names_gold_barb.tex" ),
    Asset( "ATLAS", "images/names_gold_barb.xml" ),

    

    --Character Dark Knight
    Asset( "IMAGE", "images/saveslot_portraits/darkknight.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/darkknight.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/darkknight.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/darkknight.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/darkknight_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/darkknight_silho.xml" ),

    Asset( "IMAGE", "bigportraits/darkknight.tex" ),
    Asset( "ATLAS", "bigportraits/darkknight.xml" ),

    Asset( "IMAGE", "images/map_icons/darkknight.tex" ),
	Asset( "ATLAS", "images/map_icons/darkknight.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_darkknight.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_darkknight.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_ghost_darkknight.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_darkknight.xml" ),

    Asset( "IMAGE", "images/avatars/self_inspect_darkknight.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_darkknight.xml" ),

    Asset( "IMAGE", "images/names_darkknight.tex" ),
    Asset( "ATLAS", "images/names_darkknight.xml" ),
    
    Asset( "IMAGE", "images/names_gold_darkknight.tex" ),
    Asset( "ATLAS", "images/names_gold_darkknight.xml" ),

    --Character Wizard
    Asset( "IMAGE", "images/saveslot_portraits/wizard.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/wizard.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/wizard.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/wizard.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/wizard_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/wizard_silho.xml" ),

    Asset( "IMAGE", "bigportraits/wizard.tex" ),
    Asset( "ATLAS", "bigportraits/wizard.xml" ),

    Asset( "IMAGE", "images/map_icons/wizard.tex" ),
	Asset( "ATLAS", "images/map_icons/wizard.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_wizard.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_wizard.xml" ),

    Asset( "IMAGE", "images/avatars/avatar_ghost_wizard.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_wizard.xml" ),

    Asset( "IMAGE", "images/avatars/self_inspect_wizard.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_wizard.xml" ),

    Asset( "IMAGE", "images/names_wizard.tex" ),
    Asset( "ATLAS", "images/names_wizard.xml" ),
    
    Asset( "IMAGE", "images/names_gold_wizard.tex" ),
    Asset( "ATLAS", "images/names_gold_wizard.xml" ),
	
    --Sounds wizard
    Asset("SOUNDPACKAGE", "sound/wizard.fev"),
    Asset("SOUND", "sound/wizard.fsb"),

    --Sounds barb
    Asset("SOUNDPACKAGE", "sound/barb.fev"),
    Asset("SOUND", "sound/barb.fsb"),

}

--Custom voice wizard
RemapSoundEvent( "dontstarve/characters/wizard/death_voice", "wizard/wizard/death_voice" )
RemapSoundEvent( "dontstarve/characters/wizard/hurt", "wizard/wizard/hurt" )
RemapSoundEvent( "dontstarve/characters/wizard/talk_LP", "wizard/wizard/talk_LP" )

--Custom voice wizard
RemapSoundEvent( "dontstarve/characters/barb/death_voice", "barb/barb/death_voice" )
RemapSoundEvent( "dontstarve/characters/barb/hurt", "barb/barb/hurt" )
RemapSoundEvent( "dontstarve/characters/barb/talk_LP", "barb/barb/talk_LP" )

--Add on icon in map
AddMinimapAtlas("images/map_icons/barb.xml")
AddMinimapAtlas("images/map_icons/darkknight.xml")
AddMinimapAtlas("images/map_icons/wizard.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines 
-- Shadow Knight
STRINGS.CHARACTER_TITLES.darkknight = "The Shadow Knight"
STRINGS.CHARACTER_NAMES.darkknight = "Shadow Knight"
STRINGS.CHARACTER_DESCRIPTIONS.darkknight = "*1. Has evil powers and a dark sword\n*2. Is comforted by evil but hates the good\n*3. Can use shields"
STRINGS.CHARACTER_QUOTES.darkknight = "\"If you gaze into the abyss, the abyss gazes gazes back into you.\""
STRINGS.CHARACTER_SURVIVABILITY.darkknight = "Slim"

-- The character select screen lines
-- Barbarian
STRINGS.CHARACTER_TITLES.barb = "The Barbarian"
STRINGS.CHARACTER_NAMES.barb = "Barbarian"
STRINGS.CHARACTER_DESCRIPTIONS.barb = "*1. Gets stronger by fighting\n*2. Is more efficient at manual work\n*3. Consumes more food and eats raw meat"
STRINGS.CHARACTER_QUOTES.barb = "\"I'll crack yer skull open!\""
STRINGS.CHARACTER_SURVIVABILITY.barb = "Slim"

-- The character select screen lines 
-- Wizard
STRINGS.CHARACTER_TITLES.wizard = "The Wizard"
STRINGS.CHARACTER_NAMES.wizard = "Wizard"
STRINGS.CHARACTER_DESCRIPTIONS.wizard = "*1. Has trouble using most armors and weapons\n*2. Better at using wands and books\n*3. Is researching many types of magic into his book"
STRINGS.CHARACTER_QUOTES.wizard = "\"The only sovereign you can allow to rule you is reason.\""
STRINGS.CHARACTER_SURVIVABILITY.wizard = "Slim"

--Weapon names
--Dark Sword
STRINGS.NAMES.DKSWORD = "Dark Sword" --Display name
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DKSWORD = "This blade holds an eerie power." -- Inspection quote

--Holy Sword
STRINGS.NAMES.HOLYSWORD = "Holy Sword" --Display name
STRINGS.CHARACTERS.GENERIC.DESCRIBE.HOLYSWORD = "." -- Inspection quote !!! 

-- Custom speech strings
STRINGS.CHARACTERS.DARKKNIGHT = require "speech_darkknight"
STRINGS.CHARACTERS.WIZARD = require "speech_wizard"
STRINGS.CHARACTERS.BARB = require "speech_barb"



-- The character's name as appears in-game 
STRINGS.NAMES.DARKKNIGHT = "Dark Knight"
STRINGS.SKIN_NAMES.darkknight = "Dark Knight"

STRINGS.NAMES.BARB = "Barb"
STRINGS.SKIN_NAMES.barb = "Barb"

STRINGS.NAMES.Wizard = "Wizard"
STRINGS.SKIN_NAMES.wizard = "Wizard"

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
AddModCharacter("wizard", "MALE", skin_modes)