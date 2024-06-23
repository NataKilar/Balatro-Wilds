--- STEAMODDED HEADER
--- MOD_NAME: Balatro Wilds Texture Pack
--- MOD_ID: BalatroWilds
--- MOD_AUTHOR: [NataKilar]
--- MOD_DESCRIPTION: Retextures all planet cards to astral bodies from the game Outer Wilds

--- PRIORITY: -100
--- DISPLAY_NAME: Balatro Wilds
--- BADGE_COLOUR: d18017

----------------------------------------------
------------ MOD CODE ------------------------

function SMODS.INIT.BalatroWilds()
	sendDebugMessage("Loading Balatro Wilds texture pack...")

	SMODS.Atlas({
		key = 'balatrowilds_planets',
		px = 71,
		py = 95,
		path = "Tarots-balatrowilds.png"
	})

	-- TODO: Steamodded currently doesn't support claiming individual boosters, so we have manually change the Atlas here.
	SMODS.Atlas{key = "Booster", path = "Boosters-balatrowilds.png", px = 71, py = 95, raw_key = true}

	-- Claim and retexture default planets --
	SMODS.Consumable:take_ownership('c_mercury', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_venus', {
		atlas = 'balatrowilds_planets'
	})
	
	SMODS.Consumable:take_ownership('c_earth', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_mars', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_jupiter', {
		atlas = 'balatrowilds_planets'
	})
	
	SMODS.Consumable:take_ownership('c_saturn', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_uranus', {
		atlas = 'balatrowilds_planets',
		label = 'pluto_planet'
	})

	SMODS.Consumable:take_ownership('c_neptune', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_pluto', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_ceres', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_planet_x', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_eris', {
		atlas = 'balatrowilds_planets'
	})

	SMODS.Consumable:take_ownership('c_black_hole', {
		atlas = 'balatrowilds_planets'
	})
end
----------------------------------------------
------------ END MOD CODE --------------------