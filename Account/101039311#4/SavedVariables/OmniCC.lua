
OmniCCDB = {
	["profileKeys"] = {
		["Pybdank - Sulfuron"] = "Default",
		["Xkz - Thekal"] = "Default",
		["Pyddzo - Thekal"] = "Default",
		["Zhz - Sulfuron"] = "Default",
		["Pydd - Sulfuron"] = "Default",
		["Pyddz - Sulfuron"] = "Default",
		["Sxk - Sulfuron"] = "Default",
		["Pydd - Thekal"] = "Default",
		["Pyddzer - Sulfuron"] = "Default",
		["Pyddzz - Sulfuron"] = "Default",
		["Pyddo - Sulfuron"] = "Default",
		["Pyddz - Zandalar Tribe"] = "Default",
		["Pyddzanito - Thekal"] = "Default",
		["Pydd - Zandalar Tribe"] = "Default",
		["Kahlãn - Sulfuron"] = "Default",
		["Shamygentil - Thekal"] = "Default",
		["Pyddz - Thekal"] = "Default",
		["Pyddzer - Thekal"] = "Default",
		["Pydd - Finkle"] = "Default",
		["Shx - Sulfuron"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.0.1",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "ActionBars",
					["id"] = "actions",
				}, -- [3]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
					["minSize"] = 0,
					["minEffectDuration"] = 10,
				},
			},
		},
	},
}
OmniCC4Config = nil
