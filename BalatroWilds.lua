--- STEAMODDED HEADER
--- MOD_NAME: Balatro Wilds Texture Pack
--- MOD_ID: BalatroWilds
--- MOD_AUTHOR: [NataKilar]
--- MOD_DESCRIPTION: Retextures all planet cards to astral bodies from the game Outer Wilds

--- PRIORITY: -100

----------------------------------------------
------------ MOD CODE ------------------------

function SMODS.INIT.BalatroWilds()
	sendDebugMessage("Loading Balatro Wilds texture pack...")

	local balatrowilds = SMODS.findModByID("BalatroWilds")
	local tarot_sprite = SMODS.Sprite:new("Tarot", balatrowilds.path, "Tarots-balatrowilds.png", 71, 95, "asset_atli")
	local booster_sprite = SMODS.Sprite:new("Booster", balatrowilds.path, "Boosters-balatrowilds.png", 71, 95, "asset_atli")

	tarot_sprite:register()
	booster_sprite:register()

	-- Claim and rename default planets --

	SMODS.Planet:take_ownership('c_mercury'):register()
	SMODS.Planets.c_mercury.loc_txt.name = "Hourglass Twins"

	SMODS.Planet:take_ownership('c_venus'):register()
	SMODS.Planets.c_venus.loc_txt.name = "The Attlerock"
	
	SMODS.Planet:take_ownership('c_earth'):register()
	SMODS.Planets.c_earth.loc_txt.name = "Timber Hearth"

	SMODS.Planet:take_ownership('c_mars'):register()
	SMODS.Planets.c_mars.loc_txt.name = "Brittle Hollow"

	SMODS.Planet:take_ownership('c_jupiter'):register()
	SMODS.Planets.c_jupiter.loc_txt.name = "Giant's Deep"
	
	SMODS.Planet:take_ownership('c_saturn'):register()
	SMODS.Planets.c_saturn.loc_txt.name = "Dark Bramble"

	SMODS.Planet:take_ownership('c_uranus'):register()
	SMODS.Planets.c_uranus.loc_txt.name = "Hollow's Lantern"

	SMODS.Planet:take_ownership('c_neptune'):register()
	SMODS.Planets.c_neptune.loc_txt.name = "The Vessel"

	SMODS.Planet:take_ownership('c_pluto'):register()
	SMODS.Planets.c_pluto.loc_txt.name = "The Interloper"

	SMODS.Planet:take_ownership('c_ceres'):register()
	SMODS.Planets.c_ceres.loc_txt.name = "The Stranger"

	SMODS.Planet:take_ownership('c_planet_x'):register()
	SMODS.Planets.c_planet_x.loc_txt.name = "The Sun Station"

	SMODS.Planet:take_ownership('c_eris'):register()
	SMODS.Planets.c_eris.loc_txt.name = "The Quantum Moon"

	SMODS.Spectral:take_ownership('c_black_hole'):register()
	SMODS.Spectrals.c_black_hole.loc_txt.name = "The Eye of the Universe"
end
----------------------------------------------
------------ END MOD CODE --------------------