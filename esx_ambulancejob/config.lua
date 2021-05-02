Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 10000  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 2 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 10 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(-11.79, -1829.84, 25.39), heading = 138.82 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(309.45, -592.25, 43.28),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(302.09, -598.83, 42.2)
		},

		Pharmacies = {
			vector3(309.95, -568.31, 42.2)
		},

		Vehicles = {
			{
				Spawner = vector3(294.01, -605.11, 43.32),
				InsideShop = vector3(288.1, -601.8, 43.18),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(288.1, -601.8, 43.18), heading = 338.8, radius = 4.0 },
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(355.07, -579.31, 74.17),
				InsideShop = vector3(351.82, -588.44, 74.17),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.82, -588.44, 74.17), heading = 71.25, radius = 10.0 },
				}
			}
		},

                FastTravels = {
			{
				From = vector3(332.98, -569.15, 42.2),
				To = { coords = vector3(342.31, -585.2, 72.96), heading = 248.16 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = { coords = vector3(295.8, -1446.5, 28.9), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(1514.94, -1281.51, 96.17),
				To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(338.58, -583.94, 73.50),
				To = { coords = vector3(331.72, -572.29, 43.28), heading = 159.84 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {

	ems_recruit = {
                { model = 'dodgeEMS', label = 'Dodge EMS', price = 20000}
	},

	sr_emt = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 3000}
	},

	ems_supervisor = {
		{ model = 'police3', label = 'Ford Explorer', price = 50000}
	},

	ems_chief = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 2000}
	}

}

Config.AuthorizedHelicopters = {

	ems_recruit = {},

	sr_emt = {},

	ems_supervisor = {},

	ems_chief = {
		{ model = 'polmav', label = 'Ambulance Air', price = 100000 },
	}

}
