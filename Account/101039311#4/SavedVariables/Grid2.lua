
Grid2DB = {
	["namespaces"] = {
		["Grid2Frame"] = {
			["profiles"] = {
				["Default"] = {
					["frameBorder"] = 1,
					["extraThemes"] = {
						{
							["frameColor"] = {
								["a"] = 1,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["fontSize"] = 11,
							["frameHeaderHeights"] = {
							},
							["frameBorder"] = 1,
							["showTooltip"] = "Always",
							["iconSize"] = 14,
							["mouseoverTexture"] = "Blizzard Quest Title Highlight",
							["frameBorderDistance"] = -1,
							["frameHeaderWidths"] = {
							},
							["frameHeight"] = 60,
							["mouseoverColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["shadowDisabled"] = true,
							["barTexture"] = "ElvUI Norm",
							["frameBorderTexture"] = "1 Pixel",
							["frameWidths"] = {
							},
							["frameTexture"] = "Grid2 Flat",
							["font"] = "Arial Narrow",
							["frameHeights"] = {
							},
							["frameContentColor"] = {
								["a"] = 0.0172790884971619,
								["r"] = 1,
								["g"] = 1,
								["b"] = 0,
							},
							["mouseoverHighlight"] = false,
							["orientation"] = "VERTICAL",
							["frameWidth"] = 90,
							["frameBorderColor"] = {
								["a"] = 0,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
						}, -- [1]
					},
					["showTooltip"] = "Always",
					["frameBorderDistance"] = -1,
					["frameHeight"] = 60,
					["shadowDisabled"] = true,
					["barTexture"] = "ElvUI Norm",
					["frameTexture"] = "Grid2 Flat",
					["font"] = "Arial Narrow",
					["menuDisabled"] = true,
					["frameContentColor"] = {
						["a"] = 0.0172790884971619,
						["g"] = 1,
						["r"] = 1,
					},
					["frameWidth"] = 95,
					["frameBorderTexture"] = "1 Pixel",
				},
			},
		},
		["Grid2Utils"] = {
		},
		["Grid2Layout"] = {
			["global"] = {
				["customLayouts"] = {
					["Mythic"] = {
						{
							["maxColumns"] = 4,
							["sortMethod"] = "INDEX",
							["groupingOrder"] = "1,2,3,4",
							["groupBy"] = "GROUP",
							["groupFilter"] = "1,2,3,4",
							["unitsPerColumn"] = 5,
						}, -- [1]
						{
							["maxColumns"] = 1,
							["type"] = "pet",
							["unitsPerColumn"] = 5,
							["toggleForVehicle"] = true,
						}, -- [2]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = false,
							["showParty"] = true,
						},
					},
					["Group-Custom"] = {
						{
							["maxColumns"] = 5,
							["sortMethod"] = "INDEX",
							["groupingOrder"] = "WARRIOR,DEATHKNIGHT,DEMONHUNTER,ROGUE,MONK,PALADIN,DRUID,SHAMAN,PRIEST,MAGE,WARLOCK,HUNTER",
							["unitsPerColumn"] = 1,
							["groupFilter"] = "1,2,3",
							["groupBy"] = "CLASS",
						}, -- [1]
						{
							["maxColumns"] = 1,
							["type"] = "pet",
							["sortMethod"] = "INDEX",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "auto",
						}, -- [2]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = false,
							["showParty"] = true,
						},
					},
					["Flex"] = {
						{
							["maxColumns"] = 6,
							["groupBy"] = "GROUP",
							["sortMethod"] = "INDEX",
							["unitsPerColumn"] = 5,
							["groupingOrder"] = "1,2,3,4,5,6,7,8",
							["groupFilter"] = "1,2,3,4,5,6",
							["toggleForVehicle"] = true,
						}, -- [1]
						{
							["maxColumns"] = 1,
							["type"] = "pet",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "1,2,3,6",
							["toggleForVehicle"] = true,
						}, -- [2]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = true,
							["showParty"] = true,
						},
					},
				},
			},
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["raid@lfr"] = "Flex",
						["solo"] = "None",
						["raid@pvp"] = "By Group",
						["raid@other"] = "Flex",
						["raid@mythic"] = "Mythic",
						["party"] = "Group-Custom",
						["raid"] = "Mythic",
						["raid@none"] = "Flex",
						["raid25"] = "By Group",
						["arena"] = "Group-Custom",
						["raid@flex"] = "Flex",
						["raid15"] = "By Group",
					},
					["BackgroundB"] = 0.101960784313725,
					["ScaleSize"] = 1.25,
					["Spacing"] = 0,
					["layoutScales"] = {
						["Mythic"] = 0.7,
						["Flex"] = 0.6,
						["Group-Custom"] = 0.75,
					},
					["extraThemes"] = {
						{
							["BackgroundTexture"] = "Blizzard ChatFrame Background",
							["BorderB"] = 0.5,
							["layouts"] = {
								["raid@lfr"] = "Flex",
								["solo"] = "None",
								["raid@other"] = "Flex",
								["raid@pvp"] = "Mythic",
								["raid"] = "By Group w/Pets",
								["party"] = "Group-Custom",
								["arena"] = "Group-Custom",
								["raid@none"] = "Flex",
								["raid25"] = "By Group",
								["raid@mythic"] = "Mythic",
								["raid@flex"] = "Flex",
								["raid15"] = "By Group",
							},
							["BackgroundR"] = 0.101960784313725,
							["ScaleSize"] = 1.2,
							["FrameDisplay"] = "Always",
							["BorderA"] = 1,
							["BorderR"] = 0.5,
							["PosX"] = 36.26658560858505,
							["layoutScales"] = {
								["Mythic"] = 0.7,
								["Flex"] = 0.6,
								["Group-Custom"] = 0.75,
							},
							["groupAnchors"] = {
							},
							["Positions"] = {
								["Flex"] = {
									"TOPLEFT", -- [1]
									49.06666569179947, -- [2]
									-233.0657183958174, -- [3]
								},
								["Flex2"] = {
									"TOPLEFT", -- [1]
									49.06666569179947, -- [2]
									-326.665769722571, -- [3]
								},
							},
							["groupHorizontals"] = {
							},
							["BackgroundG"] = 0.101960784313725,
							["groupAnchor"] = "TOPLEFT",
							["PosY"] = -252.265649578676,
							["BorderTexture"] = "None",
							["anchors"] = {
							},
							["horizontal"] = true,
							["unitsPerColumns"] = {
							},
							["Spacing"] = 0,
							["FrameStrata"] = "LOW",
							["BackgroundA"] = 0,
							["anchor"] = "TOPLEFT",
							["BorderG"] = 0.5,
							["clamp"] = true,
							["Padding"] = 0,
							["BackgroundB"] = 0.101960784313725,
							["FrameLock"] = false,
						}, -- [1]
					},
					["Positions"] = {
						["Group-Custom2"] = {
							"TOPLEFT", -- [1]
							343.466646194458, -- [2]
							-468.0665379157435, -- [3]
						},
						["Group-Custom"] = {
							"TOPLEFT", -- [1]
							343.466646194458, -- [2]
							-273.0666123023402, -- [3]
						},
					},
					["BackgroundG"] = 0.101960784313725,
					["minimapIcon"] = {
						["minimapPos"] = 152.1775032218127,
						["hide"] = true,
					},
					["PosY"] = -183.4665184607875,
					["FrameStrata"] = "LOW",
					["BackgroundA"] = 0,
					["BackgroundR"] = 0.101960784313725,
					["PosX"] = 145.0668935775757,
					["BorderTexture"] = "None",
				},
			},
		},
		["Grid2AoeHeals"] = {
		},
		["Grid2Options"] = {
			["profiles"] = {
				["Default"] = {
					["L"] = {
						["indicators"] = {
							["MultipleBuffs"] = "BottomLeftHealingBuffs",
							["BottomLeftImportantDebuffs"] = "BottomRightImportantDebuff",
						},
					},
				},
			},
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Default"] = {
					["defaultEJ_difficulty"] = 16,
					["lastSelectedModule"] = "Battle for Azeroth",
					["debuffs"] = {
						[1001] = {
							{
								["id"] = 1001,
								["name"] = "Freehold",
							}, -- [1]
							["Void-Touched Emissary"] = {
								257437, -- [1]
								258323, -- [2]
								302420, -- [3]
								["order"] = 5,
							},
							["Skycap'n Kragg"] = {
								["order"] = 1,
								["ejid"] = 2102,
							},
							["unknown"] = {
								257747, -- [1]
								274555, -- [2]
								274400, -- [3]
								257739, -- [4]
								276061, -- [5]
								206151, -- [6]
								240559, -- [7]
								209261, -- [8]
								306474, -- [9]
								["order"] = 5,
							},
							["Council o' Captains"] = {
								265056, -- [1]
								278467, -- [2]
								265085, -- [3]
								["order"] = 2,
								["ejid"] = 2093,
							},
						},
						[1021] = {
							{
								["id"] = 1021,
								["name"] = "Waycrest Manor",
							}, -- [1]
							["Gorak Tul"] = {
								["order"] = 5,
								["ejid"] = 2129,
							},
							["Lord and Lady Waycrest"] = {
								["order"] = 4,
								["ejid"] = 2128,
							},
							["Soulbound Goliath"] = {
								["order"] = 2,
								["ejid"] = 2126,
							},
							["unknown"] = {
								302420, -- [1]
								["order"] = 6,
							},
							["Raal the Gluttonous"] = {
								["order"] = 3,
								["ejid"] = 2127,
							},
							["Heartsbane Triad"] = {
								233490, -- [1]
								["order"] = 1,
								["ejid"] = 2125,
							},
						},
						[101718] = {
							{
								["id"] = 101718,
								["name"] = "Nazjatar",
							}, -- [1]
							["unknown"] = {
								1490, -- [1]
								304959, -- [2]
								304966, -- [3]
								296539, -- [4]
								279956, -- [5]
								280583, -- [6]
								1604, -- [7]
								289308, -- [8]
								272970, -- [9]
								212792, -- [10]
								263840, -- [11]
								199721, -- [12]
								214968, -- [13]
								273977, -- [14]
								288333, -- [15]
								302565, -- [16]
								55078, -- [17]
								217200, -- [18]
								295367, -- [19]
								255909, -- [20]
								247121, -- [21]
								300832, -- [22]
								258883, -- [23]
								207777, -- [24]
								179057, -- [25]
								288330, -- [26]
								205708, -- [27]
								177147, -- [28]
								232978, -- [29]
								124280, -- [30]
								290792, -- [31]
								25771, -- [32]
								303438, -- [33]
								131924, -- [34]
								304851, -- [35]
								303439, -- [36]
								["order"] = 11,
							},
						},
						[1022] = {
							{
								["id"] = 1022,
								["name"] = "The Underrot",
							}, -- [1]
							["Unbound Abomination"] = {
								["order"] = 4,
								["ejid"] = 2158,
							},
							["Elder Leaxa"] = {
								["order"] = 1,
								["ejid"] = 2157,
							},
							["Cragmaw the Infested"] = {
								["order"] = 2,
								["ejid"] = 2131,
							},
							["Void-Touched Emissary"] = {
								302420, -- [1]
								["order"] = 5,
							},
							["unknown"] = {
								["order"] = 5,
							},
							["Sporecaller Zancha"] = {
								["order"] = 3,
								["ejid"] = 2130,
							},
						},
					},
					["enabledModules"] = {
						["Battle for Azeroth"] = true,
					},
					["lastSelectedInstance"] = 1179,
				},
			},
		},
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Olimiazz - Dalaran"] = {
					["enabled"] = false,
				},
				["Olimia - Dalaran"] = {
					["enabled"] = false,
				},
				["Pydd - Dalaran"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["profileKeys"] = {
		["Pyddbtbank - Dalaran"] = "Default",
		["Sdgdas - Dalaran"] = "Default",
		["Sxk - Sulfuron"] = "Default",
		["Pyddbtbankb - Dalaran"] = "Default",
		["Stalkypydd - Dalaran"] = "Default",
		["Oôo - Dalaran"] = "Default",
		["Pyddbtbankf - Dalaran"] = "Default",
		["Pybdank - Sulfuron"] = "Default",
		["Cascabel - Dalaran"] = "Default",
		["Shx - Sulfuron"] = "Default",
		["Olimiazz - Dalaran"] = "Default",
		["Kahlañ - Dalaran"] = "Default",
		["Pyddbtbankg - Dalaran"] = "Default",
		["Pyddbtbanke - Dalaran"] = "Default",
		["Pyddz - Dalaran"] = "Default",
		["Pydd - Dalaran"] = "Default",
		["Pyddbtbanka - Dalaran"] = "Default",
		["Pyddz - Thekal"] = "Default",
		["Pyddzer - Thekal"] = "Default",
		["Pyddo - Dalaran"] = "Default",
		["Pyddzanito - Thekal"] = "Default",
		["Pyddos - Dalaran"] = "Default",
		["Pydd - Sulfuron"] = "Default",
		["Piedd - Dalaran"] = "Default",
		["Pyddbtbankd - Dalaran"] = "Default",
		["Pydd - Thekal"] = "Default",
		["Pyddzer - Sulfuron"] = "Default",
		["Bonjøurs - Dalaran"] = "Default",
		["Pydd - Tarren Mill"] = "Default",
		["Pyddbtbankk - Dalaran"] = "Default",
		["Pyddbtbanki - Dalaran"] = "Default",
		["Denner - Dalaran"] = "Default",
		["Pyddbt - Blackrock"] = "Default",
		["Pydd - Ravencrest"] = "Default",
		["Migros - Dalaran"] = "Default",
		["Bezenye - Dalaran"] = "Default",
		["Xkz - Thekal"] = "Default",
		["Pyddzo - Thekal"] = "Default",
		["Zhz - Sulfuron"] = "Default",
		["Pyddbtbankh - Dalaran"] = "Default",
		["Monacoline - Dalaran"] = "Default",
		["Cérébroside - Dalaran"] = "Default",
		["Pyddz - Sulfuron"] = "Default",
		["Pydypyed - Dalaran"] = "Default",
		["Berretran - Drek'Thar"] = "Default",
		["Tesptokds - Dalaran"] = "Default",
		["Pydd - Chants éternels"] = "Default",
		["Pyddzz - Sulfuron"] = "Default",
		["Pydd - Dun Modr"] = "Default",
		["Olimiaz - Uldaman"] = "Default",
		["Pyddo - Sulfuron"] = "Default",
		["Pyddtwo - Dun Modr"] = "Default",
		["Sakøsh - Uldaman"] = "Default",
		["Gerriere - Dalaran"] = "Default",
		["Pyedd - Dalaran"] = "Default",
		["Pyddchimio - Culte de la Rive noire"] = "Default",
		["Tipulidae - Dalaran"] = "Default",
		["Pyddbtbankc - Dalaran"] = "Default",
		["Lipianki - Dalaran"] = "Default",
		["Kahlãn - Sulfuron"] = "Default",
		["Sneakypydd - Dalaran"] = "Default",
		["Pyeedou - Dalaran"] = "Default",
		["Shamygentil - Thekal"] = "Default",
		["Pyddeew - Zenedar"] = "Default",
		["Florestine - Dalaran"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["TopLeftDefsCD"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["iconSpacing"] = 0,
					["iconSize"] = 12,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["maxIconsPerRow"] = 5,
					["reverseCooldown"] = true,
					["level"] = 8,
				},
				["mana-color"] = {
					["type"] = "bar-color",
				},
				["text-down"] = {
					["fontSize"] = 11,
					["font"] = "Arial Narrow",
					["type"] = "text",
					["location"] = {
						["y"] = 29,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 13,
					["fontFlags"] = "NONE",
				},
				["symbole"] = {
					["animOnEnabled"] = true,
					["type"] = "icon",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -3,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 17,
				},
				["Importants-stacks"] = {
					["type"] = "text",
					["shadowDisabled"] = true,
					["font"] = "DorisPP",
					["fontSize"] = 14,
					["level"] = 7,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = -3,
					},
					["stack"] = true,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["background"] = {
					["type"] = "background",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["Importants-stacks-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Armory",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["absorbheal"] = {
					["type"] = "bar",
					["opacity"] = 1,
					["reverseFill"] = true,
					["orientation"] = "HORIZONTAL",
					["level"] = 4,
					["location"] = {
						["y"] = -0.5,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["height"] = 4,
				},
				["corner-top-right"] = {
					["font"] = "Friz Quadrata TT",
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["type"] = "text",
				},
				["Aggro"] = {
					["type"] = "square",
					["texture"] = "ElvUI Norm",
					["height"] = 4,
					["level"] = 6,
					["location"] = {
						["y"] = -9,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["width"] = 18,
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 2,
				},
				["text-up"] = {
					["type"] = "text",
					["fontSize"] = 9,
					["location"] = {
						["y"] = -34,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 9,
					["fontFlags"] = "NONE",
				},
				["corner-top-left"] = {
					["font"] = "Friz Quadrata TT",
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["type"] = "text",
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 15,
				},
				["absorbheal-color"] = {
					["type"] = "bar-color",
				},
				["mana"] = {
					["type"] = "bar",
					["height"] = 4,
					["orientation"] = "HORIZONTAL",
					["level"] = 3,
					["opacity"] = 1,
					["location"] = {
						["y"] = -0.5,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
				},
				["Dispell"] = {
					["type"] = "icon",
					["disableIcon"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = -9,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 18,
				},
				["absorb"] = {
					["type"] = "bar",
					["level"] = 4,
					["location"] = {
						["y"] = -0.5,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["opacity"] = 1,
					["height"] = 4,
					["orientation"] = "HORIZONTAL",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["BottomLeftImportantDebuffs"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["maxIcons"] = 3,
					["font"] = "Arial Narrow",
					["useStatusColor"] = true,
					["iconSize"] = 10,
					["maxIconsPerRow"] = 3,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0.901960784313726,
						["g"] = 1,
						["b"] = 0.835294117647059,
					},
				},
				["side-top"] = {
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["type"] = "text",
				},
				["MultipleBuffs"] = {
					["maxIcons"] = 5,
					["fontSize"] = 10,
					["iconSize"] = 12,
					["reverseCooldown"] = true,
					["location"] = {
						["y"] = 3.5,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["maxIconsPerRow"] = 7,
					["level"] = 8,
					["type"] = "icons",
				},
				["health"] = {
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["backColor"] = {
						["a"] = 1,
						["r"] = 0.8980392156862745,
						["g"] = 0.8980392156862745,
						["b"] = 0.8980392156862745,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["opacity"] = 1,
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["CenterDebuffs"] = {
					["type"] = "icons",
					["iconSpacing"] = 1,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 3,
					["borderSize"] = 1,
					["iconSize"] = 17,
					["useStatusColor"] = true,
					["maxIconsPerRow"] = 4,
					["location"] = {
						["y"] = -6,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 27,
					},
					["level"] = 9,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["Atonement"] = {
					["type"] = "icon",
					["fontSize"] = 8,
					["animEnabled"] = true,
					["animDuration"] = 0.2,
					["level"] = 8,
					["location"] = {
						["y"] = 15,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 32,
					},
					["size"] = 16,
				},
				["absorb-color"] = {
					["type"] = "bar-color",
				},
			},
			["statuses"] = {
				["debuffs-Debuffs"] = {
					["auras"] = {
						"Watcher's Corpse", -- [1]
						"Exhaustion", -- [2]
						"Power of Vesperon", -- [3]
						"Power of Shadron", -- [4]
						"Power of Tenebron", -- [5]
						"Tricked or Treated", -- [6]
					},
					["type"] = "debuffs",
					["debuffTypeColorize"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["dungeon-role"] = {
					["useAlternateIcons"] = true,
					["hideInCombat"] = true,
				},
				["raid-debuffs"] = {
					["debuffs"] = {
						[968] = {
							274195, -- [1]
							277072, -- [2]
							265914, -- [3]
							255835, -- [4]
							255836, -- [5]
							263927, -- [6]
							250372, -- [7]
							255620, -- [8]
							250096, -- [9]
							259145, -- [10]
							249919, -- [11]
							255434, -- [12]
							255371, -- [13]
							257407, -- [14]
							255421, -- [15]
							253562, -- [16]
							254959, -- [17]
							260668, -- [18]
							255567, -- [19]
							279118, -- [20]
							252692, -- [21]
							252687, -- [22]
							255041, -- [23]
							255814, -- [24]
						},
						[1036] = {
							268896, -- [1]
							269104, -- [2]
							269131, -- [3]
							267899, -- [4]
							267818, -- [5]
							264560, -- [6]
							268233, -- [7]
							274633, -- [8]
							268309, -- [9]
							268315, -- [10]
							268317, -- [11]
							268322, -- [12]
							268391, -- [13]
							274720, -- [14]
							276268, -- [15]
							268059, -- [16]
							268027, -- [17]
							267034, -- [18]
						},
						[1002] = {
							257791, -- [1]
							257777, -- [2]
							257793, -- [3]
							260067, -- [4]
							256198, -- [5]
							256038, -- [6]
							256044, -- [7]
							256200, -- [8]
							256105, -- [9]
							256201, -- [10]
							257028, -- [11]
							259711, -- [12]
							257092, -- [13]
							260016, -- [14]
							258864, -- [15]
							258313, -- [16]
							258079, -- [17]
							258075, -- [18]
							258058, -- [19]
							265889, -- [20]
							258128, -- [21]
							225080, -- [22]
						},
						[1179] = {
							292127, -- [1]
							292307, -- [2]
							292167, -- [3]
							301494, -- [4]
							298595, -- [5]
							296693, -- [6]
							297333, -- [7]
							296737, -- [8]
							297586, -- [9]
							299914, -- [10]
							296851, -- [11]
							300545, -- [12]
							298306, -- [13]
							295779, -- [14]
							298156, -- [15]
							298306, -- [16]
							303825, -- [17]
							303657, -- [18]
							300492, -- [19]
							297907, -- [20]
							292971, -- [21]
							292963, -- [22]
							293509, -- [23]
							298192, -- [24]
							300882, -- [25]
							295421, -- [26]
							295348, -- [27]
							294715, -- [28]
							294711, -- [29]
						},
						[1021] = {
							263905, -- [1]
							265352, -- [2]
							266036, -- [3]
							264105, -- [4]
							264390, -- [5]
							265346, -- [6]
							264050, -- [7]
							265761, -- [8]
							264153, -- [9]
							265407, -- [10]
							271178, -- [11]
							263943, -- [12]
							264520, -- [13]
							265881, -- [14]
							264378, -- [15]
							264407, -- [16]
							265880, -- [17]
							265882, -- [18]
							266035, -- [19]
							263891, -- [20]
							264556, -- [21]
							278456, -- [22]
							268203, -- [23]
							261439, -- [24]
							261438, -- [25]
							261440, -- [26]
							260551, -- [27]
							268231, -- [28]
							260741, -- [29]
							260926, -- [30]
							260703, -- [31]
							302420, -- [32]
							233490, -- [33]
						},
						[1023] = {
							256076, -- [1]
							257459, -- [2]
							257288, -- [3]
							274991, -- [4]
							257882, -- [5]
							257862, -- [6]
						},
						[1041] = {
							268932, -- [1]
							268586, -- [2]
							267626, -- [3]
							267702, -- [4]
							267764, -- [5]
							267639, -- [6]
							267273, -- [7]
							266238, -- [8]
							266231, -- [9]
							267257, -- [10]
							265773, -- [11]
							265914, -- [12]
						},
						[1030] = {
							267027, -- [1]
							263958, -- [2]
							261732, -- [3]
							263927, -- [4]
							269686, -- [5]
							269670, -- [6]
							268024, -- [7]
							266512, -- [8]
							266923, -- [9]
							263371, -- [10]
							263234, -- [11]
							268993, -- [12]
							263778, -- [13]
							225080, -- [14]
							273563, -- [15]
							272657, -- [16]
							267027, -- [17]
							272655, -- [18]
							272696, -- [19]
							272699, -- [20]
							268013, -- [21]
							268007, -- [22]
							268008, -- [23]
						},
						[1001] = {
							256553, -- [1]
							256363, -- [2]
							281591, -- [3]
							257460, -- [4]
							257314, -- [5]
							278993, -- [6]
							257908, -- [7]
							257478, -- [8]
							258874, -- [9]
							267523, -- [10]
							1604, -- [11]
							274384, -- [12]
							257437, -- [13]
							258323, -- [14]
							302420, -- [15]
							257747, -- [16]
							274555, -- [17]
							274400, -- [18]
							257739, -- [19]
							276061, -- [20]
							265056, -- [21]
							278467, -- [22]
							265085, -- [23]
						},
						[1031] = {
							272336, -- [1]
							272536, -- [2]
							274693, -- [3]
							272407, -- [4]
							272146, -- [5]
							274019, -- [6]
							274113, -- [7]
							274761, -- [8]
							279013, -- [9]
							271222, -- [10]
							270290, -- [11]
							275270, -- [12]
							275189, -- [13]
							275205, -- [14]
							265360, -- [15]
							265662, -- [16]
							265237, -- [17]
							265264, -- [18]
							265646, -- [19]
							264210, -- [20]
							270589, -- [21]
							270620, -- [22]
							263334, -- [23]
							263372, -- [24]
							263436, -- [25]
							272506, -- [26]
							267409, -- [27]
							267430, -- [28]
							263235, -- [29]
							270287, -- [30]
							263321, -- [31]
							267659, -- [32]
							267700, -- [33]
							267813, -- [34]
							269691, -- [35]
							277007, -- [36]
							279575, -- [37]
							273365, -- [38]
							274358, -- [39]
							273434, -- [40]
							274195, -- [41]
							274271, -- [42]
							272018, -- [43]
							276020, -- [44]
							276299, -- [45]
							262313, -- [46]
							262314, -- [47]
							262292, -- [48]
							267821, -- [49]
							267787, -- [50]
							268095, -- [51]
							268198, -- [52]
							268253, -- [53]
							268277, -- [54]
							265129, -- [55]
							265178, -- [56]
							265212, -- [57]
							265127, -- [58]
							265206, -- [59]
						},
						[1022] = {
							260685, -- [1]
							260333, -- [2]
							260455, -- [3]
							259714, -- [4]
							259718, -- [5]
							265533, -- [6]
							265019, -- [7]
							265377, -- [8]
							265568, -- [9]
							266107, -- [10]
							272180, -- [11]
							265468, -- [12]
							272609, -- [13]
							265511, -- [14]
							273599, -- [15]
							266265, -- [16]
							302420, -- [17]
							273226, -- [18]
							269301, -- [19]
							278961, -- [20]
						},
						[1178] = {
							297257, -- [1]
							299438, -- [2]
							300207, -- [3]
							299475, -- [4]
							301712, -- [5]
							299502, -- [6]
							294290, -- [7]
							294195, -- [8]
							293986, -- [9]
							298124, -- [10]
							297913, -- [11]
							298229, -- [12]
							285443, -- [13]
							294860, -- [14]
							285460, -- [15]
							291939, -- [16]
							294929, -- [17]
							291946, -- [18]
							285388, -- [19]
							298669, -- [20]
							298718, -- [21]
							295445, -- [22]
							302274, -- [23]
							295939, -- [24]
							296150, -- [25]
						},
						[1012] = {
							260811, -- [1]
							260829, -- [2]
							260838, -- [3]
							270277, -- [4]
							280604, -- [5]
							280605, -- [6]
							263637, -- [7]
							269298, -- [8]
							263202, -- [9]
							268704, -- [10]
							268846, -- [11]
							263074, -- [12]
							262270, -- [13]
							262794, -- [14]
							262811, -- [15]
							268797, -- [16]
							269429, -- [17]
							262377, -- [18]
							262348, -- [19]
							269092, -- [20]
							262515, -- [21]
							262513, -- [22]
							257582, -- [23]
							258627, -- [24]
							257544, -- [25]
							275907, -- [26]
							256137, -- [27]
							257333, -- [28]
							262347, -- [29]
							270882, -- [30]
							258971, -- [31]
							259940, -- [32]
							259853, -- [33]
						},
					},
					["color1"] = {
						["g"] = 0.5019607843137255,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
				},
				["color-HPBAR"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.05490196078431373,
						["g"] = 0.05882352941176471,
						["b"] = 0.05490196078431373,
					},
				},
				["heal-absorbs"] = {
					["thresholdMedium"] = 112000,
					["thresholdLow"] = 17200,
				},
				["debuff-Magic"] = {
					["color1"] = {
						["g"] = 0.250980392156863,
						["r"] = 0.0784313725490196,
					},
				},
				["buff-EarthShield-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 32594,
				},
				["raid-icon-target"] = {
					["opacity"] = 1,
				},
				["death"] = {
					["color1"] = {
						["g"] = 0.1333333333333333,
						["b"] = 0,
					},
				},
				["ready-check"] = {
					["threshold"] = 2,
				},
				["buff-SpiritofRedemption"] = {
					["spellName"] = 27827,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["direction"] = {
					["StickyMouseover"] = true,
					["updateRate"] = 0.05,
					["ShowVisible"] = true,
					["color2"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.6,
					},
					["guessDirections"] = true,
					["color4"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ShowOutOfRange"] = true,
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.9,
						["b"] = 0,
					},
					["color5"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["colorCount"] = 5,
				},
				["buffs-HealingBuff-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0.929411764705882,
						["g"] = 1,
						["b"] = 0.882352941176471,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Bestow Faith", -- [1]
						"Cenarion Ward", -- [2]
						"Rejuvenation", -- [3]
						"Rejuvenation (Germination)", -- [4]
						"Lifebloom", -- [5]
						"Cenarion's Ward", -- [6]
						"Renewing Mist", -- [7]
						"Riptide", -- [8]
						"Renew", -- [9]
						"Prayer of mending", -- [10]
						"Guiding Hand", -- [11]
						"Wild Growth", -- [12]
						"Enveloping Mist", -- [13]
						"Glimmer of Light", -- [14]
					},
				},
				["mana"] = {
					["color1"] = {
						["g"] = 1,
						["b"] = 0.9490196078431372,
					},
				},
				["range"] = {
					["default"] = 0.36,
					["elapsed"] = 0.1,
					["range"] = "Flash of Light",
				},
				["health-current"] = {
					["quickHealth"] = true,
				},
				["self"] = {
					["color1"] = {
						["b"] = 0.976470588235294,
						["g"] = 0.976470588235294,
						["r"] = 1,
					},
				},
				["friendcolor"] = {
					["color1"] = {
						["b"] = 0.1725490196078431,
						["g"] = 0.1843137254901961,
						["r"] = 0.2274509803921569,
					},
				},
				["buffs-BuffsCD"] = {
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["auras"] = {
						"Food & Drink", -- [1]
						"Anti-Magic Barrier", -- [2]
						"Dancing Rune Weapon", -- [3]
						"Icebound Fortitude", -- [4]
						"Vampiric Blood", -- [5]
						"Blur", -- [6]
						"Netherwalk", -- [7]
						"Barkskin", -- [8]
						"Survival Instincts", -- [9]
						"Dampen Harm", -- [10]
						"Diffuse Magic", -- [11]
						"Fortifying Brew", -- [12]
						"Touch of Karma", -- [13]
						"Divine Protection", -- [14]
						"Guardian of Ancient Kings", -- [15]
						"Dispersion", -- [16]
						"Astral Shift", -- [17]
						"Unending Resolve", -- [18]
						"Die by the Sword", -- [19]
						"Enraged Regeneration", -- [20]
						"Icebound Fortitude", -- [21]
						"Aspect of the Turtle", -- [22]
						"Ice Block", -- [23]
						"Divine Shield", -- [24]
						"Cloak of Shadows", -- [25]
						"Evasion", -- [26]
						"Riposte", -- [27]
						"Blessing of Protection", -- [28]
						"Blessing of Spellwarding", -- [29]
						"Guardian Spirit", -- [30]
						"Ironbark", -- [31]
						"Life Cocoon", -- [32]
						"Blessing of Sacrifice", -- [33]
						"Pain Suppression", -- [34]
						"Stampeding Roar", -- [35]
						"Blessing of Freedom", -- [36]
						"Anti-Magic Shell", -- [37]
					},
				},
				["color-RED"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.02745098039215686,
						["b"] = 0,
					},
				},
				["resurrection"] = {
					["color2"] = {
						["r"] = 0.2470588235294118,
					},
					["color1"] = {
						["r"] = 0.9450980392156862,
					},
				},
				["banzai"] = {
					["color1"] = {
						["g"] = 0.0862745098039216,
						["b"] = 0.125490196078431,
					},
				},
				["color-VERT"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2196078431372549,
						["g"] = 1,
						["b"] = 0,
					},
				},
			},
			["versions"] = {
				["Grid2"] = 11,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["TopLeftDefsCD"] = {
					["buff-EarthShield-mine"] = 51,
					["buffs-BuffsCD"] = 50,
				},
				["side-top"] = {
				},
				["text-down"] = {
					["name"] = 50,
				},
				["symbole"] = {
					["raid-icon-player"] = 50,
				},
				["Importants-stacks"] = {
				},
				["side-top-color"] = {
				},
				["Importants-stacks-color"] = {
					["color-RED"] = 50,
				},
				["heals"] = {
				},
				["absorbheal"] = {
					["heal-absorbs"] = 51,
				},
				["corner-top-right"] = {
				},
				["Aggro"] = {
					["banzai"] = 52,
					["banzai-threat"] = 51,
				},
				["tooltip"] = {
				},
				["text-up"] = {
					["afk"] = 97,
					["vehicle"] = 70,
					["feign-death"] = 96,
					["offline"] = 93,
				},
				["corner-top-left"] = {
				},
				["corner-bottom-right"] = {
				},
				["absorbheal-color"] = {
					["color-RED"] = 50,
				},
				["mana"] = {
					["mana"] = 50,
				},
				["Dispell"] = {
				},
				["corner-top-right-color"] = {
				},
				["text-down-color"] = {
					["classcolor"] = 51,
				},
				["icon-center"] = {
					["summon"] = 188,
					["buff-SpiritofRedemption"] = 186,
					["tortos-crystal-shell"] = 161,
					["ready-check"] = 185,
				},
				["absorb"] = {
					["absorb-above-maxHP"] = 52,
					["absorb-below-maxHP"] = 51,
					["shields"] = 53,
				},
				["CenterDebuffs"] = {
					["debuffs-Debuffs"] = 50,
				},
				["BottomLeftImportantDebuffs"] = {
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["absorb-color"] = {
					["color-VERT"] = 50,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["vehicle"] = 100,
				},
				["border"] = {
				},
				["mana-color"] = {
					["mana"] = 50,
				},
				["MultipleBuffs"] = {
					["buffs-HealingBuff-mine"] = 50,
				},
				["health"] = {
					["health-current"] = 51,
					["death"] = 52,
				},
				["corner-top-left-color"] = {
				},
				["corner-bottom-left"] = {
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["Atonement"] = {
				},
				["health-color"] = {
					["resurrection"] = 62,
					["offline"] = 63,
					["color-HPBAR"] = 59,
					["death"] = 61,
				},
			},
			["themes"] = {
				["enabled"] = {
					["party"] = 0,
					["default"] = 0,
					["raid"] = 1,
				},
				["indicators"] = {
					{
					}, -- [1]
					[0] = {
						["Dispell"] = true,
					},
				},
				["names"] = {
					"Raid", -- [1]
					[0] = "Party",
				},
			},
		},
	},
}
