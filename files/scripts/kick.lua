function kick(kicker)
	local x, y = EntityGetTransform( kicker )
	EntityLoad("mods/Bannereiden-Mestari/files/sacred_barrel.xml", x, y )
end
