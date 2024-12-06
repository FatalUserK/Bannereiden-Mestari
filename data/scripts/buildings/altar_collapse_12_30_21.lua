dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/lib/coroutines.lua")

async(function ()
	if GameHasFlagRun("Logo_Flag") then
		return
	end
	GameAddFlagRun("Logo_Flag")
	local entity_id = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	EntityLoad("mods/Bannereiden-Mestari/files/image_emitters/noita_logo_classic.xml", pos_x, pos_y-43)
	EntityLoad("data/entities/animals/goblin_bomb.xml", pos_x+20, pos_y-20)
	EntityLoad("data/entities/animals/goblin_bomb.xml", pos_x-20, pos_y-20)
	wait(60)
	local torches = EntityGetWithTag( "altar_torch" )
	if ( #torches > 0 ) then
		for index,torch in ipairs(torches) do		
			EntitySetComponentsWithTagEnabled( torch, "fire", true )
		end
	end
	local parent_id = EntityGetParent( entity_id )
	EntitySetComponentsWithTagEnabled( parent_id, "wow_effect", true )
	wait( 240 )
	GameScreenshake( 45 )
	local player = EntityGetWithTag("player_unit")[1]
	local dmc_id = EntityGetFirstComponent( pid, "DamageModelComponent")
	ComponentSetValue2( dmc_id, "physics_objects_damage", true )
	local what = ComponentGetValue2( dmc_id, "physics_objects_damage" )
	GamePrint(tostring(what))
	EntityLoad("mods/Bannereiden-Mestari/files/misc/BallDrop.xml", pos_x, pos_y - 180)
	wait( 200 )
	for i = 15, 1, -1 do
		pos_x = Random(pos_x - 3, pos_x + 3)
		local eid = EntityLoad("data/entities/projectiles/glitter_bomb.xml", pos_x, pos_y - 65)
		EntityKill( eid )
	end
end)