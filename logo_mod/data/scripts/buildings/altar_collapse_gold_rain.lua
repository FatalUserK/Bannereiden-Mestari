dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/lib/coroutines.lua")

async(function ()
	if GameHasFlagRun("Logo_Flag") then
		return
	end
	GameAddFlagRun("Logo_Flag")
	local entity_id = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	EntityLoad("mods/logo_mod/files/image_emitters/noita_logo_classic.xml", pos_x, pos_y-43)
	wait(60)
	local torches = EntityGetWithTag( "altar_torch" )
	if ( #torches > 0 ) then
		for index,torch in ipairs(torches) do		
			EntitySetComponentsWithTagEnabled( torch, "fire", true )
		end
	end
	local parent_id = EntityGetParent( entity_id )
	EntitySetComponentsWithTagEnabled( parent_id, "wow_effect", true )
	wait( 30 )
	for i = 170, 1, -1 do
		GameCreateParticle( "gold", pos_x + Random(-160,160), pos_y + Random(-250,-200), Random(25,50), Random(-75,-15), Random(10,100), false, true )
		wait(1)
	end
	wait( 120 )
	EntityLoad( "data/entities/animals/boss_centipede/ending/midas_entities.xml", pos_x, pos_y )
	EntityLoad( "data/entities/animals/boss_centipede/ending/midas_walls.xml", pos_x, pos_y )
end)