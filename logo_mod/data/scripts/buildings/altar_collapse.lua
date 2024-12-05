dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/lib/coroutines.lua")

async(function ()
	if GameHasFlagRun("Logo_Flag") then
		return
	end
	GameAddFlagRun("Logo_Flag")
	local entity_id = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	EntityLoad("mods/logo_mod/files/image_emitters/noita_logo.xml", pos_x, pos_y-43)
	wait(300)
	local torches = EntityGetWithTag( "altar_torch" )
	if ( #torches > 0 ) then
		for index,torch in ipairs(torches) do		
			EntitySetComponentsWithTagEnabled( torch, "fire", true )
		end
	end
end)