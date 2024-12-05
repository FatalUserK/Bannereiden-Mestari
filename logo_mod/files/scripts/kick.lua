function kick(kicker)
	local x, y = EntityGetTransform( kicker )
	EntityLoad("mods/logo_mod/files/sacred_barrel.xml", x, y )
end
