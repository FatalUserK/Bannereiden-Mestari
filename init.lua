ModMaterialsFileAdd( "mods/Bannereiden-Mestari/files/materials_append.xml" )

local nxml = dofile_once("mods/Bannereiden-Mestari/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
local mBPS = xml:first_of("mBufferedPixelScenes")
mBPS:add_child(nxml.parse([[
    <PixelScene DEBUG_RELOAD_ME="1" background_filename="" clean_area_before="0" colors_filename="" material_filename="mods/Bannereiden-Mestari/files/altar_trailer_empty.png" pos_x="205" pos_y="3532" skip_biome_checks="1" skip_edge_textures="0" >
    </PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))

function OnPlayerSpawned( pid )
	if GameHasFlagRun("ExtolLogoModInit") == false then
		GameAddFlagRun("ExtolLogoModInit")
		EntityAddComponent2( pid, "LuaComponent", {script_kick="mods/Bannereiden-Mestari/files/scripts/kick.lua",execute_every_n_frame=-1})
	end
	local dmc_id = EntityGetFirstComponent( pid, "DamageModelComponent")
	ComponentSetValue2( dmc_id, "physics_objects_damage", true )
end
