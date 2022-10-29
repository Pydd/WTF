
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Spell Haste 5% "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\n5%% spell haste\n|T136092:0|t |cFFFFFFFFWrath of Air Totem|r]],\n    classes[7].class\n)\n\naura_env.icon = 136092\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"2895", -- [1]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell Haste 5% ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Rq7pe1jUoCD",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136092",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Bleed damage 30%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Offensive debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s  %s%s\n30%% bleed damage\n|T132135:0|t |cFFFFFFFFMangle (Cat/Bear)|r\n|T236305:0|t |cFFFFFFFFTrauma|r\n|T237572:0|t |cFFFFFFFFStampede|r]],\n    classes[11].class, classes[11].spec2,\n    classes[1].class, classes[1].spec1,\n    classes[3].class, classes[3].spec1\n)\n\naura_env.icon = 132135\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"33983", -- [1]
							"33987", -- [2]
							"46855", -- [3]
							"57393", -- [4]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Bleed damage 30%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "7zkCbsb6jfi",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132135",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Health value  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nhealth value\n|T132351:0|t |cFFFFFFFFCommanding Shout|r\n|T136124:0|t |cFFFFFFFFBlood Pact|r]],\n    classes[1].class, classes[9].class\n)\n\naura_env.icon = 132351",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"469", -- [1]
							"6307", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Health value  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "9DvakcEn615",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132351",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["PAL_HOW"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["parent"] = "RET_PAL",
			["displayText"] = " ",
			["yOffset"] = -4.10260009765625,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"The Art of War", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["use_targetRequired"] = true,
						["event"] = "Action Usable",
						["spellName"] = 27180,
						["realSpellName"] = "Hammer of Wrath",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[105] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["wordWrap"] = "WordWrap",
			["fontSize"] = 12,
			["information"] = {
				["forceEvents"] = true,
			},
			["fixedWidth"] = 200,
			["shadowXOffset"] = 1,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["shadowYOffset"] = -1,
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["uid"] = "E8n5Ewh7N)L",
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["displayText_format_p_time_precision"] = 1,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_action"] = "show",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = true,
					["glow_frame"] = "ElvUI_Bar5Button3",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["xOffset"] = -243.6922607421875,
			["id"] = "PAL_HOW",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["displayText_format_p_time_mod_rate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Health value "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nhealth value\n|T132351:0|t |cFFFFFFFFCommanding Shout|r\n|T136124:0|t |cFFFFFFFFBlood Pact|r]],\n    classes[1].class, classes[9].class\n)\n\naura_env.icon = 132351",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"469", -- [1]
							"6307", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Health value ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "pplIg6tqpKD",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132351",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell Crit 5%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n5%% spell crit\n|T136057:0|t |cFFFFFFFFMoonkin Aura|r\n|T237576:0|t |cFFFFFFFFElemental Oath|r]],\n    classes[11].class, classes[11].spec1,\n    classes[7].class, classes[7].spec1\n)\n\naura_env.icon = 136057\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"24907", -- [1]
							"51470", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell Crit 5%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "rDPxwkeOz7r",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136057",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_BoL"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useStacks"] = false,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["names"] = {
						},
						["spellIds"] = {
						},
						["auraspellids"] = {
							"53563", -- [1]
						},
						["group_count"] = "1",
						["useGroup_count"] = true,
						["useExactSpellId"] = true,
						["group_countOperator"] = "==",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 15,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
						[23] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["uid"] = "km8P)Ckx0vA",
			["id"] = "HOLY_PAL_BoL",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "UNITFRAME",
			["width"] = 15,
			["config"] = {
			},
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "HOLY_PAL_UTIL",
		},
		["Damage 3%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s  %s%s\n3%% damage\n|T132173:0|t |cFFFFFFFFFerocious Inspiration|r\n|T135934:0|t |cFFFFFFFFSanctified Retribution (hidden)|r\n|T136096:0|t |cFFFFFFFFArcane Empowerment|r]],\n    classes[3].class, classes[3].spec1,\n    classes[2].class, classes[2].spec3,\n    classes[8].class, classes[8].spec1\n)\n\naura_env.icon = 132173\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"75447", -- [1]
							"31583", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Damage 3%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "xCjXPu0UQ1O",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132173",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Mana replenishment 1%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Resource return  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s  %s%s  %s%s  %s%s\n1%% mana replenishment 5 sec\n|T135978:0|t |cFFFFFFFFVampiric Touch|r\n|T236257:0|t |cFFFFFFFFJudgements of the Wise|r\n|T236181:0|t |cFFFFFFFFHunting Party|r\n|T236300:0|t |cFFFFFFFFImproved Soul Leech|r\n|T135862:0|t |cFFFFFFFFEnduring Winter|r]],\n    classes[5].class, classes[5].spec3,\n    classes[2].class, classes[2].spec3,\n    classes[3].class, classes[3].spec3,\n    classes[9].class, classes[9].spec3,\n    classes[8].class, classes[8].spec3\n)\n\naura_env.icon = 237551\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"57669", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Mana replenishment 1%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "738sf5MT1NT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "237551",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Offensive debuffs  "] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"Bleed damage 30%  ", -- [1]
				"Physical damage 4%  ", -- [2]
				"Critical chance 3%", -- [3]
				"Spell crit chance 5%  ", -- [4]
				"Spell hit chance 3%  ", -- [5]
				"Spell damage 13%  ", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Target] debuffs",
			["preferToUpdate"] = false,
			["groupIcon"] = "132334",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "RIGHT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Spell crit chance 5%  "] = false,
				["Bleed damage 30%  "] = false,
				["Spell hit chance 3%  "] = false,
				["Critical chance 3%"] = false,
				["Physical damage 4%  "] = false,
				["Spell damage 13%  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Offensive debuffs  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "HOZpno82M(G",
			["arcLength"] = 360,
			["yOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = -5,
		},
		["PRIEST_LOW_SPIRIT_DURATION"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "360",
						["useStacks"] = false,
						["auranames"] = {
							"Divine Spirit", -- [1]
						},
						["combinePerUnit"] = true,
						["unit"] = "group",
						["stacks"] = "0",
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["useName"] = true,
						["stacksOperator"] = "==",
						["useExactSpellId"] = false,
						["perUnitMode"] = "affected",
						["useRem"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["useMatch_count"] = false,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["subeventPrefix"] = "SPELL",
						["useAffected"] = true,
						["useIgnoreName"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["cooldown"] = true,
			["parent"] = "PRIEST",
			["selfPoint"] = "TOPRIGHT",
			["xOffset"] = 0,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["id"] = "PRIEST_LOW_SPIRIT_DURATION",
			["width"] = 25,
			["frameStrata"] = 1,
			["anchorFrameType"] = "UNITFRAME",
			["alpha"] = 1,
			["uid"] = "sO3McYnOtD(",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["icon"] = true,
		},
		["Haste 3%"] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n3%% haste\n|T236156:0|t |cFFFFFFFFImproved Moonkin Form|r\n|T236266:0|t |cFFFFFFFFSwift Retribution (hidden)|r]],\n    classes[11].class, classes[11].spec1,\n    classes[2].class, classes[2].spec3\n)\n\naura_env.icon = 236156\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"24907", -- [1]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Haste 3%",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "DVrsXFbN8uh",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "236156",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Mark/Gift of the Wild  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\narmor + stats + resistance\n|T136078:0|t |cFFFFFFFFMark of the Wild|r\n|T136038:0|t |cFFFFFFFFGift of the Wild|r]],\n    classes[11].class\n)\n\naura_env.icon = 136038",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"9884", -- [1]
							"21849", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Mark/Gift of the Wild  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "1uIwBLL15iP",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136038",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell buffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Intellect ", -- [1]
				"Spirit ", -- [2]
				"Spell Power ", -- [3]
				"Spell Crit 5% ", -- [4]
				"Spell Haste 5% ", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Smart group] buffs - unaffected tooltip  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "135143",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Intellect "] = false,
				["Spirit "] = false,
				["Spell Power "] = false,
				["Spell Crit 5% "] = false,
				["Spell Haste 5% "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell buffs",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "A(PmSbU4hyR",
			["arcLength"] = 360,
			["yOffset"] = -52,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["Blessing of Kings  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\n10%% stats\n|T135995:0|t |cFFFFFFFFBlessing of Kings|r\n|T135993:0|t |cFFFFFFFFGreater Blessing of Kings|r]],\n    classes[2].class\n)\n\naura_env.icon = 135993",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"20217", -- [1]
							"25898", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Blessing of Kings  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "3Y6kdeg2lkp",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135993",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Shared buffs  "] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Bloodlist/Heroism  ", -- [1]
				"Blessing of Kings  ", -- [2]
				"Blessing of Sanctuary  ", -- [3]
				"Mark/Gift of the Wild  ", -- [4]
				"Stamina  ", -- [5]
				"Health value  ", -- [6]
				"Damage 3%  ", -- [7]
				"Haste 3%  ", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Player] buffs  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "136078",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Damage 3%  "] = false,
				["Blessing of Kings  "] = false,
				["Health value  "] = false,
				["Stamina  "] = false,
				["Blessing of Sanctuary  "] = false,
				["Haste 3%  "] = false,
				["Mark/Gift of the Wild  "] = false,
				["Bloodlist/Heroism  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Shared buffs  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "Hvu9mGz1G4r",
			["arcLength"] = 360,
			["yOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["Physical damage 4%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Offensive debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n4%% physical damage\n|T132334:0|t |cFFFFFFFFBlood Frenzy (hidden)|r\n|T132100:0|t |cFFFFFFFFSavage Combat|r]],\n    classes[1].class, classes[1].spec1,\n    classes[4].class, classes[4].spec2\n)\n\naura_env.icon = 132334\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"58683", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Physical damage 4%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "UWExwgl)SWa",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132334",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["PAL_DF"] = {
			["iconSource"] = -1,
			["parent"] = "HOLY_PAL_HEAL",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["auraspellids"] = {
							"20216", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["ignoreDead"] = true,
						["group_count"] = "0",
						["unit"] = "group",
						["useGroup_count"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["remaining"] = "5",
						["spellName"] = 20216,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_remaining"] = false,
						["remaining_operator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "spell",
						["realSpellName"] = "Divine Favor",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["duration"] = "1",
						["unit"] = "player",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[20] = true,
					},
				},
				["zoneIds"] = "",
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = 0,
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["uid"] = "njyWcMs65vc",
			["tocversion"] = 90005,
			["id"] = "PAL_DF",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "unitCount",
						["value"] = "0",
						["op"] = ">",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Power Infusion  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Single player buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s\n20%% cast speed 20%% mana cost reduction\n|T135939:0|t |cFFFFFFFFPower Infusion|r]],\n    classes[5].class, classes[5].spec1\n)\n\naura_env.icon = 135939\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"10060", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Power Infusion  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "bl)5eNa8vXT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135939",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell Crit 5% "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n5%% spell crit\n|T136057:0|t |cFFFFFFFFMoonkin Aura|r\n|T237576:0|t |cFFFFFFFFElemental Oath|r]],\n    classes[11].class, classes[11].spec1,\n    classes[7].class, classes[7].spec1\n)\n\naura_env.icon = 136057\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"24907", -- [1]
							"51470", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell Crit 5% ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "hDxPXwXQxV4",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136057",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["PAL_HAND"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPLEFT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "group",
						["names"] = {
						},
						["namePattern_name"] = "Hand of",
						["spellIds"] = {
						},
						["namePattern_operator"] = "find('%s')",
						["group_count"] = "1",
						["useNamePattern"] = true,
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = ">=",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPLEFT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 20,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["useTooltip"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["uid"] = "oDr4lDH85Sj",
			["alpha"] = 1,
			["id"] = "PAL_HAND",
			["anchorFrameType"] = "UNITFRAME",
			["useCooldownModRate"] = true,
			["width"] = 20,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135966,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Damage 3% "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s  %s%s\n3%% damage\n|T132173:0|t |cFFFFFFFFFerocious Inspiration|r\n|T135934:0|t |cFFFFFFFFSanctified Retribution (hidden)|r\n|T136096:0|t |cFFFFFFFFArcane Empowerment|r]],\n    classes[3].class, classes[3].spec1,\n    classes[2].class, classes[2].spec3,\n    classes[8].class, classes[8].spec1\n)\n\naura_env.icon = 132173\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"75447", -- [1]
							"31583", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Damage 3% ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "j85SWMkD8UM",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132173",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Physical Crit 5% "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n5%% physical crit\n|T136112:0|t |cFFFFFFFFLeader of the Pack|r\n|T132352:0|t |cFFFFFFFFRampage|r]],\n    classes[11].class, classes[11].spec2,\n    classes[1].class, classes[1].spec2\n)\n\naura_env.icon = 136112\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"24932", -- [1]
							"29801", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Physical Crit 5% ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "oRNj(u)U59m",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136112",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["RET_PAL"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"RET_PAL_ART_OF_WAR", -- [1]
				"PAL_HOW", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["border"] = false,
			["yOffset"] = 0,
			["regionType"] = "group",
			["borderSize"] = 2,
			["scale"] = 1,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["borderEdge"] = "Square Full White",
			["internalVersion"] = 59,
			["borderOffset"] = 4,
			["selfPoint"] = "CENTER",
			["id"] = "RET_PAL",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["uid"] = "bzgR0XXbeDL",
			["config"] = {
			},
			["subRegions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 0,
		},
		["Bloodlist/Heroism  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.tooltip = [[|T626006:20|t\n]]\n\nlocal classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nbloodlust/heroism\n|T136012:0|t |cFFFFFFFFBloodlust|r\n|T132313:0|t |cFFFFFFFFHeroism|r]],\n    classes[7].class, classes[8].class\n)\n\naura_env.icon = 136012\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"2825", -- [1]
							"32182", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Bloodlist/Heroism  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "0PAv0cnBZrf",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136012",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Attack Power value "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nattack power value\n|T135906:0|t |cFFFFFFFFBlessing of Might|r\n|T135908:0|t |cFFFFFFFFGreater Blessing of Might|r\n|T132333:0|t |cFFFFFFFFBattle Shout|r]],\n    classes[2].class, classes[1].class\n)\n\naura_env.icon = 135908\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"19740", -- [1]
							"25782", -- [2]
							"6673", -- [3]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Attack Power value ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "KFm4yLXiYnZ",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135908",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_DI"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["itemSlot"] = 13,
						["names"] = {
						},
						["remaining_operator"] = "<=",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["spellName"] = 88625,
						["use_itemSlot"] = true,
						["use_remaining"] = false,
						["auraspellids"] = {
							"31842", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = 88625,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["use_unit"] = true,
						["remaining"] = "5",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 0,
						["remaining_operator"] = "<=",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["remaining"] = "5",
						["itemSlot"] = 13,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["spellName"] = 31842,
						["use_remaining"] = false,
						["auraspellids"] = {
							"31884", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "Divine Illumination",
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["use_itemSlot"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["zoneIds"] = "",
				["talent"] = {
					["multi"] = {
						[23] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["zoom"] = 0,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["uid"] = "fMU4vIknmBO",
			["tocversion"] = 90005,
			["id"] = "HOLY_PAL_DI",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "HOLY_PAL_CD",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["HOLY_PAL_WINGS"] = {
			["iconSource"] = -1,
			["parent"] = "HOLY_PAL_CD",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["itemSlot"] = 13,
						["remaining"] = "5",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 88625,
						["realSpellName"] = 88625,
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_itemName"] = true,
						["auraspellids"] = {
							"31884", -- [1]
						},
						["use_itemSlot"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["use_track"] = true,
						["remaining_operator"] = "<=",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 0,
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["itemSlot"] = 13,
						["names"] = {
						},
						["remaining_operator"] = "<=",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["useExactSpellId"] = true,
						["spellName"] = 31884,
						["use_itemSlot"] = true,
						["use_remaining"] = false,
						["auraspellids"] = {
							"31884", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "Avenging Wrath",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["use_unit"] = true,
						["remaining"] = "5",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[23] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["zoneIds"] = "",
				["use_talent"] = false,
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["tocversion"] = 90005,
			["id"] = "HOLY_PAL_WINGS",
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["width"] = 40,
			["frameStrata"] = 1,
			["uid"] = "MBwoN)0b7V8",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["HOLY_PAL_DP"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["remaining_operator"] = "<=",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["remaining"] = "5",
						["itemSlot"] = 13,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["spellName"] = 88625,
						["use_remaining"] = false,
						["auraspellids"] = {
							"54428", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["realSpellName"] = 88625,
						["type"] = "aura2",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["use_itemSlot"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 0,
						["subeventPrefix"] = "SPELL",
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["remaining"] = "5",
						["itemSlot"] = 13,
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["spellName"] = 54428,
						["use_itemSlot"] = true,
						["use_remaining"] = false,
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["auraspellids"] = {
							"31884", -- [1]
						},
						["realSpellName"] = "Divine Plea",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[23] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["zoneIds"] = "",
				["use_talent"] = false,
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["parent"] = "HOLY_PAL_CD",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["tocversion"] = 90005,
			["id"] = "HOLY_PAL_DP",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "osnRlnPnfzW",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Blessing of Sanctuary  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s\n3%% dmg reduction 10%% str and stam\n|T136051:0|t |cFFFFFFFFBlessing of Sanctuary|r\n|T135911:0|t |cFFFFFFFFGreater Blessing of Sanctuary|r]],\n    classes[2].class, classes[2].spec2\n)\n\naura_env.icon = 135911",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"20911", -- [1]
							"25899", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Blessing of Sanctuary  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Fmnyf6eQl2a",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135911",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Resource return  "] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"Mana restoration mp5  ", -- [1]
				"Mana replenishment 1%  ", -- [2]
				"Judgement of Wisdom  ", -- [3]
				"Judgement of Light  ", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Player] resource  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "237551",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "RIGHT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Judgement of Light  "] = false,
				["Mana restoration mp5  "] = false,
				["Mana replenishment 1%  "] = false,
				["Judgement of Wisdom  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Resource return  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "mcXsO98vMoY",
			["arcLength"] = 360,
			["yOffset"] = -52,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = -5,
		},
		["TRINKET_2"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "5",
						["remaining_operator"] = "<=",
						["use_unit"] = true,
						["names"] = {
						},
						["duration"] = "1",
						["spellName"] = 88625,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["realSpellName"] = "Holy Word: Chastise",
						["event"] = "Cooldown Progress (Equipment Slot)",
						["use_itemName"] = true,
						["use_itemSlot"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["unit"] = "player",
						["itemSlot"] = 14,
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["forceEvents"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["zoom"] = 0,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["tocversion"] = 90005,
			["id"] = "TRINKET_2",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "XePF0XPYU0d",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["parent"] = "TRINKETS",
		},
		["Armor reduction 5%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Reduction debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s  %s\n5%% armor reduction\n|T136033:0|t |cFFFFFFFFFaerie Fire|r\n|T136138:0|t |cFFFFFFFFCurse of Weakness|r\n|T136093:0|t |cFFFFFFFFSting|r]],\n    classes[11].class, classes[9].class,\n    classes[3].class\n)\n\naura_env.icon = 136033\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
							"50511", -- [3]
							"56631", -- [4]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Armor reduction 5%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "es)adExFrV7",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136033",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell Haste 5%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\n5%% spell haste\n|T136092:0|t |cFFFFFFFFWrath of Air Totem|r]],\n    classes[7].class\n)\n\naura_env.icon = 136092\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"2895", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell Haste 5%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "pZn7Bpr0uQV",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136092",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Blessing of Sanctuary"] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s\n3%% dmg reduction 10%% str and stam\n|T136051:0|t |cFFFFFFFFBlessing of Sanctuary|r\n|T135911:0|t |cFFFFFFFFGreater Blessing of Sanctuary|r]],\n    classes[2].class, classes[2].spec2\n)\n\naura_env.icon = 135911",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"20911", -- [1]
							"25899", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Blessing of Sanctuary",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "6vnX8gjg5zD",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135911",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Intellect  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nintellect\n|T135932:0|t |cFFFFFFFFArcane Intellect|r\n|T135869:0|t |cFFFFFFFFArcane Brilliance|r\n|T236509:0|t |cFFFFFFFFDalaran Intellect|r\n|T236512:0|t |cFFFFFFFFDalaran Brilliance|r\n|T136125:0|t |cFFFFFFFFFel Intelligence|r]],\n    classes[8].class, classes[9].class\n)\n\naura_env.icon = 135932\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"1459", -- [1]
							"23028", -- [2]
							"61024", -- [3]
							"61316", -- [4]
							"54424", -- [5]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Intellect  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "8UjkozLXLbm",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135932",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["PRIEST_NO_VE"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["useStacks"] = false,
						["auranames"] = {
							"Vampiric Embrace", -- [1]
						},
						["combinePerUnit"] = true,
						["matchesShowOn"] = "showOnMissing",
						["names"] = {
						},
						["stacks"] = "0",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["useName"] = true,
						["stacksOperator"] = "==",
						["useExactSpellId"] = false,
						["perUnitMode"] = "unaffected",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useAffected"] = true,
						["useIgnoreName"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[89] = true,
					},
				},
				["use_talent"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["parent"] = "PRIEST",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["frameStrata"] = 1,
			["config"] = {
			},
			["id"] = "PRIEST_NO_VE",
			["anchorFrameType"] = "UNITFRAME",
			["useCooldownModRate"] = true,
			["width"] = 25,
			["alpha"] = 1,
			["uid"] = "34mw9SZambu",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["icon"] = true,
		},
		["Physical hit chance 3%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Reduction debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s\n3%% phys hit chance\n|T136045:0|t |cFFFFFFFFInsect Swarm|r\n|T132169:0|t |cFFFFFFFFScorpid Sting|r]],\n    classes[11].class, classes[11].spec1,\n    classes[3].class\n)\n\naura_env.icon = 136045\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"48468", -- [1]
							"3043", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Physical hit chance 3%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "rxDmatTfrL3",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136045",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["PRIEST"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"PRIEST_LOW_SPIRIT_DURATION", -- [1]
				"PRIEST_LOW_STAM_DURATION", -- [2]
				"PRIEST_NO_SPIRIT", -- [3]
				"PRIEST_NO_STAM", -- [4]
				"PRIEST_NO_VE", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 2,
			["scale"] = 1,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["regionType"] = "group",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["yOffset"] = 0,
			["internalVersion"] = 59,
			["borderOffset"] = 4,
			["selfPoint"] = "CENTER",
			["id"] = "PRIEST",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["uid"] = "Wo2OQnFKxYy",
			["config"] = {
			},
			["subRegions"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["HOLY_APO"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["group_countOperator"] = ">",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["ignoreDisconnected"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["ignoreDead"] = true,
						["group_count"] = "0",
						["names"] = {
						},
						["auraspellids"] = {
							"31842", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["remaining"] = "5",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "spell",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_absorbMode"] = true,
						["realSpellName"] = "Divine Illumination",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 31842,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["zoneIds"] = "",
				["use_never"] = true,
				["use_spec"] = true,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[20] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["icon"] = true,
			["xOffset"] = 0,
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["tocversion"] = 90005,
			["id"] = "HOLY_APO",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "h6eMJVlyfki",
			["inverse"] = false,
			["parent"] = "HOLY_PAL_HEAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "unitCount",
						["op"] = ">",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["deoco!!!!elwe"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = false,
					["width"] = 1,
					["default"] = "Ledémoniste",
					["key"] = "playerName",
					["multiline"] = false,
					["length"] = 10,
					["name"] = "Player name",
					["useLength"] = false,
				}, -- [1]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n  return aura_env.config.playerName\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_format_c_format"] = "none",
					["message_custom"] = "function()\n  return 'Reconnect ' .. aura_env.config.playerName\nend",
					["do_sound"] = false,
					["message_type"] = "TTS",
					["message"] = "%c",
					["do_message"] = true,
					["message_tts_voice"] = 0,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
						["spellIds"] = {
						},
						["custom"] = "function(event, msg, sender)\n  if msg == aura_env.config.playerName .. ' has gone offline.' then\n    return true\n  end\nend",
						["events"] = "CHAT_MSG_SYSTEM",
						["custom_type"] = "event",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event, msg, sender)\n  local pattern = aura_env.config.playerName .. '.-online'\n  if string.find(msg, pattern) then\n    return true\n  end\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 150,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["wordWrap"] = "WordWrap",
			["regionType"] = "text",
			["displayText_format_p_time_legacy_floor"] = false,
			["displayText_format_c_format"] = "none",
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["yOffset"] = 0,
			["displayText"] = "REOCNNECTE %c!!!!!!!!",
			["uid"] = "00D)DMKMrin",
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "deoco!!!!elwe",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["displayText_format_p_time_mod_rate"] = true,
			["config"] = {
				["playerName"] = "Elwë",
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["xOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Combat icons"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Player Combat", -- [1]
				"Target Combat", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["preferToUpdate"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["yOffset"] = 39.93121337890625,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["regionType"] = "group",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["uid"] = "4cJ(DNEGsNI",
			["borderOffset"] = 5,
			["xOffset"] = 3.5555419921875,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Combat icons",
			["internalVersion"] = 59,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["tocversion"] = 90005,
			["subRegions"] = {
			},
			["borderInset"] = 11,
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
		},
		["Stamina "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\nstamina\n|T135987:0|t |cFFFFFFFFPower Word: Fortitude|r\n|T135941:0|t |cFFFFFFFFPrayer of Fortitude|r]],\n    classes[5].class\n)\n\naura_env.icon = 135987",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"1243", -- [1]
							"21562", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Stamina ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "I6SjFWc21hA",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135987",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["[Target] debuffs"] = {
			["controlledChildren"] = {
				"Offensive debuffs  ", -- [1]
				"Reduction debuffs  ", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "services-number-3",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 3,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["yOffset"] = 0,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "[Target] debuffs",
			["parent"] = "!Raid Auras Watcher",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["uid"] = "fJVvhA0N6j8",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 0,
		},
		["Spell Power "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s(%s)  %s%s\nspell power\n|T135829:0|t |cFFFFFFFFTotem of Wrath|r\n|T136040:0|t |cFFFFFFFFFlametongue Totem|r\n|T237562:0|t |cFFFFFFFFDemonic Pact|r]],\n    classes[7].class, classes[7].spec1,\n    classes[9].class, classes[9].spec2\n)\n\naura_env.icon = 135829\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"30706", -- [1]
							"8227", -- [2]
							"47236", -- [3]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell Power ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "3b)ek)yai9r",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135829",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell crit chance 5%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Offensive debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s%s\n5%% spell crit chance\n|T136197:0|t |cFFFFFFFFImproved Shadow Bolt|r\n|T135836:0|t |cFFFFFFFFWinter's Chill|r\n|T135827:0|t |cFFFFFFFFImproved Scorch|r]],\n    classes[9].class, classes[9].spec3,\n    classes[8].class, classes[8].spec3, classes[8].spec2\n)\n\naura_env.icon = 136197\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"17800", -- [1]
							"63094", -- [2]
							"22959", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%2.s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Fira Mono Medium",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 1,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOMRIGHT",
					["text_text_format_2.s_format"] = "none",
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell crit chance 5%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "URqbQ8z8E09",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136197",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_CD"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"HOLY_PAL_WINGS", -- [1]
				"HOLY_PAL_DI", -- [2]
				"HOLY_PAL_DP", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["useLimit"] = false,
			["align"] = "CENTER",
			["rotation"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["limit"] = 5,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rowSpace"] = 1,
			["animate"] = true,
			["fullCircle"] = true,
			["scale"] = 1,
			["selfPoint"] = "LEFT",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = -380,
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["stagger"] = 0,
			["tocversion"] = 90005,
			["id"] = "HOLY_PAL_CD",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["radius"] = 200,
			["uid"] = "Sei)tb(VSYo",
			["borderInset"] = 1,
			["grow"] = "RIGHT",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["gridType"] = "RD",
		},
		["[Player] buffs  "] = {
			["controlledChildren"] = {
				"Shared buffs  ", -- [1]
				"Physical buffs  ", -- [2]
				"Spell buffs  ", -- [3]
				"Single player buffs  ", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "services-number-2",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 3,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["yOffset"] = 0,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "[Player] buffs  ",
			["parent"] = "!Raid Auras Watcher",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["uid"] = "G9tJNAfcBh9",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 0,
		},
		["PRIEST_NO_SPIRIT"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["useStacks"] = false,
						["auranames"] = {
							"Divine Spirit", -- [1]
						},
						["combinePerUnit"] = true,
						["names"] = {
						},
						["stacks"] = "0",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["useName"] = true,
						["stacksOperator"] = "==",
						["useExactSpellId"] = false,
						["perUnitMode"] = "unaffected",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["useAffected"] = true,
						["useIgnoreName"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "PRIEST",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["frameStrata"] = 1,
			["uid"] = "43KVhpj1SGf",
			["id"] = "PRIEST_NO_SPIRIT",
			["width"] = 25,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "UNITFRAME",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["xOffset"] = 0,
		},
		["[Player] resource  "] = {
			["controlledChildren"] = {
				"Resource return  ", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "services-number-4",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 3,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["yOffset"] = 0,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "[Player] resource  ",
			["parent"] = "!Raid Auras Watcher",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["uid"] = "7YRJIqBnr(m",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 0,
		},
		["Stamina  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\nstamina\n|T135987:0|t |cFFFFFFFFPower Word: Fortitude|r\n|T135941:0|t |cFFFFFFFFPrayer of Fortitude|r]],\n    classes[5].class\n)\n\naura_env.icon = 135987",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"1243", -- [1]
							"21562", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Stamina  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "9sI)pD4Bs(G",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135987",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Critical chance 3%"] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Offensive debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s  %s%s\n3%% crit chance\n|T135924:0|t |cFFFFFFFFHeart of the Crusader|r\n|T132108:0|t |cFFFFFFFFMaster Poisoner (hidden)|r\n|T135829:0|t |cFFFFFFFFTotem of Wrath|r]],\n    classes[2].class, classes[2].spec3,\n    classes[4].class, classes[4].spec1,\n    classes[7].class, classes[7].spec1\n)\n\naura_env.icon = 135924\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"21183", -- [1]
							"30708", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Critical chance 3%",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "z95yFh5uFHi",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135924",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Judgement of Wisdom  "] = {
			["iconSource"] = 0,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Resource return  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\nmana on hit\n|T236255:0|t |cFFFFFFFFJudgement of Wisdom|r]],\n    classes[2].class\n)\n\naura_env.icon = 236255\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"20186", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Judgement of Wisdom  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "7IJqW2lO2f0",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "236255",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spirit  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nspirit\n|T135898:0|t |cFFFFFFFFDivine Spirit|r\n|T135946:0|t |cFFFFFFFFPrayer of Spirit|r\n|T136125:0|t |cFFFFFFFFFel Intelligence|r]],\n    classes[5].class, classes[9].class\n)\n\naura_env.icon = 135898\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"14752", -- [1]
							"27681", -- [2]
							"54424", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spirit  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "JEx(kKUiAT)",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135898",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["PRIEST_LOW_STAM_DURATION"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["useStacks"] = false,
						["auranames"] = {
							"Power Word: Fortitude", -- [1]
						},
						["combinePerUnit"] = true,
						["names"] = {
						},
						["stacks"] = "0",
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["useName"] = true,
						["stacksOperator"] = "==",
						["useExactSpellId"] = false,
						["perUnitMode"] = "affected",
						["useIgnoreName"] = false,
						["event"] = "Health",
						["unit"] = "group",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["rem"] = "360",
						["useAffected"] = true,
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "PRIEST",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["frameStrata"] = 1,
			["uid"] = "U3sVzq5M2qS",
			["id"] = "PRIEST_LOW_STAM_DURATION",
			["width"] = 25,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "UNITFRAME",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Melee Haste 20%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n20%% melee haste\n|T252994:0|t |cFFFFFFFFImproved Icy Talons|r\n|T136114:0|t |cFFFFFFFFImproved Windfury Totem|r]],\n    classes[6].class, classes[6].spec2,\n    classes[7].class, classes[7].spec2\n)\n\naura_env.icon = 252994\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"55610", -- [1]
							"29193", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Melee Haste 20%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "406ZaIHvHEu",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "252994",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_NO_SEAL"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = " ",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_action"] = "show",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = true,
					["glow_frame"] = "ElvUI_Bar5Button9",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["auranames"] = {
							"Seal of Blood", -- [1]
						},
						["namePattern_name"] = "Seal of",
						["useNamePattern"] = true,
						["useName"] = false,
						["namePattern_operator"] = "find('%s')",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["parent"] = "HOLY_PAL_UTIL",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["mirror"] = false,
			["conditions"] = {
			},
			["regionType"] = "text",
			["displayText_format_p_time_mod_rate"] = true,
			["blendMode"] = "BLEND",
			["wordWrap"] = "WordWrap",
			["discrete_rotation"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["frameStrata"] = 1,
			["id"] = "HOLY_PAL_NO_SEAL",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 200,
			["fontSize"] = 12,
			["uid"] = "XemwrVxqxfp",
			["shadowYOffset"] = -1,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
			},
			["displayText_format_p_time_legacy_floor"] = false,
		},
		["Physical Crit 5%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n5%% physical crit\n|T136112:0|t |cFFFFFFFFLeader of the Pack|r\n|T132352:0|t |cFFFFFFFFRampage|r]],\n    classes[11].class, classes[11].spec2,\n    classes[1].class, classes[1].spec2\n)\n\naura_env.icon = 136112\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"24932", -- [1]
							"29801", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Physical Crit 5%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "hD)KiBbfNr6",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136112",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell hit chance 3%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Offensive debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n3%% spell hit chance\n|T136176:0|t |cFFFFFFFFMisery|r\n|T136033:0|t |cFFFFFFFFImproved Faerie Fire (hidden)|r]],\n    classes[5].class, classes[5].spec3,\n    classes[11].class, classes[11].spec1\n)\n\naura_env.icon = 136176\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"33198", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell hit chance 3%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "omWcj2dDucH",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136176",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_HEAL"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"HOLY_APO", -- [1]
				"PAL_DF", -- [2]
				"RET_PAL_CS", -- [3]
				"HOLY_PALA_HS", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -380,
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 59,
			["animate"] = true,
			["sort"] = "none",
			["scale"] = 1,
			["fullCircle"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["borderInset"] = 1,
			["arcLength"] = 360,
			["id"] = "HOLY_PAL_HEAL",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["gridType"] = "RD",
			["uid"] = "7LwpWnCDypF",
			["useLimit"] = false,
			["rowSpace"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["rotation"] = 0,
		},
		["Spell damage 13%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Offensive debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s%s  %s%s\n13%% spell damage\n|T136130:0|t |cFFFFFFFFCurse of the Elements|r\n|T236150:0|t |cFFFFFFFFEarth and Moon|r\n|T132095:0|t |cFFFFFFFFEbon Plaguebringer|r]],\n    classes[9].class,\n    classes[11].class, classes[11].spec1,\n    classes[6].class, classes[6].spec3\n)\n\naura_env.icon = 136130\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"47865", -- [1]
							"60433", -- [2]
							"51735", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell damage 13%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "OXte0ozcUo9",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136130",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["deoco!!!! danny"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = false,
					["width"] = 1,
					["default"] = "Ledémoniste",
					["multiline"] = false,
					["name"] = "Player name",
					["length"] = 10,
					["key"] = "playerName",
					["useLength"] = false,
				}, -- [1]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n  return aura_env.config.playerName\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_type"] = "TTS",
					["message_custom"] = "function()\n  return 'Reconnect ' .. aura_env.config.playerName\nend",
					["do_sound"] = false,
					["message_tts_voice"] = 0,
					["message"] = "%c",
					["do_message"] = true,
					["message_format_c_format"] = "none",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["custom_type"] = "event",
						["events"] = "CHAT_MSG_SYSTEM",
						["custom"] = "function(event, msg, sender)\n  if msg == aura_env.config.playerName .. ' has gone offline.' then\n    return true\n  end\nend",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function(event, msg, sender)\n  local pattern = aura_env.config.playerName .. '.-online'\n  if string.find(msg, pattern) then\n    return true\n  end\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 150,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["regionType"] = "text",
			["internalVersion"] = 59,
			["displayText_format_c_format"] = "none",
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["xOffset"] = 0,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["config"] = {
				["playerName"] = "Dànny",
			},
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "deoco!!!! danny",
			["displayText_format_p_time_mod_rate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "YCbUaige4Hc",
			["displayText"] = "REOCNNECTE %c!!!!!!!!",
			["shadowYOffset"] = -1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["HOLY_PAL_UTIL"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"HOLY_PAL_IOL_1", -- [1]
				"HOLY_PAL_IOL_2", -- [2]
				"HOLY_PAL_NO_SEAL", -- [3]
				"HOLY_PAL_NO_FLASK", -- [4]
				"HOLY_PAL_BoL", -- [5]
				"HOLY_PAL_SS", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["information"] = {
				["forceEvents"] = true,
			},
			["border"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 2,
			["xOffset"] = 0,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["regionType"] = "group",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["borderEdge"] = "Square Full White",
			["borderOffset"] = 4,
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["id"] = "HOLY_PAL_UTIL",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "Ds0GBNU01ll",
			["config"] = {
			},
			["borderInset"] = 1,
			["subRegions"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
		},
		["Threat Differential on Nameplates"] = {
			["xOffset"] = -30,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/yssC_nf5K/11",
			["icon"] = true,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Arial Narrow",
			["displayText_format_thing_format"] = "none",
			["shadowXOffset"] = 1,
			["customAnchor"] = "function()\n    if (aura_env.state.unitId) then\n        return C_NamePlate.GetNamePlateForUnit(aura_env.state.unitId)\n    end\nend\n\n\n",
			["regionType"] = "text",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20502,
			["alpha"] = 1,
			["uid"] = "Kq4YrCu8aS(",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["wagoID"] = "yssC_nf5K",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local value = aura_env.state and aura_env.state.value\n    if value then\n        if value < 1 then\n            return \"!!!\"\n        else\n            return AbbreviateNumbers(value) or value\n        end\n    end\nend",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["custom_type"] = "stateupdate",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, unitId)\n    if not unitId then\n        return\n    end\n    \n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        local state = allstates[unitId]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n        \n    elseif unitId ~= \"target\" then\n        \n        local isTanking, threatStatus, _, _, threatValue = UnitDetailedThreatSituation(\"player\", unitId)\n        \n        if not threatValue then\n            return \n        end\n        \n        local firstUnit, firstThreat, secondUnit, secondThreat = aura_env.ThreatFunc(unitId)\n        local displayValue\n        \n        if isTanking then\n            displayValue = threatValue - secondThreat\n        else\n            displayValue = threatValue - firstThreat\n            if firstUnit\n            and not UnitIsUnit(firstUnit, \"player\")\n            and aura_env.otherTanks[UnitName(firstUnit)]\n            then\n                threatStatus = 4\n            end\n        end\n        \n        allstates[unitId] = allstates[unitId] or {unit = unitId}\n        local state = allstates[unitId]\n        state.changed = true\n        state.show = true\n        state.status = threatStatus < 1 and 1 or threatStatus\n        state.value = Round(math.abs(displayValue) / 100)\n        return true\n    end\nend",
						["events"] = "NAME_PLATE_UNIT_ADDED, NAME_PLATE_UNIT_REMOVED, UNIT_THREAT_LIST_UPDATE, GROUP_ROSTER_UPDATE",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["customVariables"] = "{\n    status = {\n        display = \"Threat Status\",\n        type = \"select\",\n        values = {\n            [1] = \"Untanked\", \n            [2] = \"Insecurely Tanking\", \n            [3] = \"Tanking\",\n            [4] = \"Tanked by Other Tank\"\n        }\n    }\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "custom",
					["x"] = 0,
					["rotate"] = 0,
					["colorFunc"] = "function()    \n    --if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    if aura_env.state.status == 3 then\n        return unpack(aura_env.config[\"color_tanking\"]) -- Reminder: return R, G, B, Alpha (using numbers between 0 and 1)\n    elseif aura_env.state.status == 2 then        \n        return unpack(aura_env.config[\"color_insecure\"])\n    elseif aura_env.state.status == 4  then\n        return unpack(aura_env.config[\"color_others\"])\n    elseif aura_env.state.status <= 1 then\n        return unpack(aura_env.config[\"color_untanked\"])\n    else\n        return 0,0,0,1\n    end \nend",
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_c2_format"] = "none",
			["stickyDuration"] = false,
			["version"] = 11,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["displayText_format_s_format"] = "none",
			["fontSize"] = 20,
			["preferToUpdate"] = false,
			["displayText"] = "%c\n",
			["displayText_format_displayValue_format"] = "none",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["default"] = "Tank1, Tank2, Tank3",
					["key"] = "addtanks",
					["name"] = "Additional Tanks",
					["multiline"] = true,
					["length"] = 10,
					["desc"] = "Format: tank1, tank2, tank3, etc [Note the space after comma.]",
					["useLength"] = false,
				}, -- [1]
				{
					["type"] = "header",
					["useName"] = false,
					["text"] = "",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [2]
				{
					["text"] = "Size, position and font can be changed under  the \"Display\" tab.",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["useHeight"] = true,
					["width"] = 1,
				}, -- [4]
				{
					["text"] = "Change colors under the \"Conditions\" tab.\nYou can add additional glows etc. to the different conditions.\n\"Untanked\"\n\"Insecurely Tanking\"\n\"Tanking\"\n\"Tanked by Other Tank\"",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [5]
			},
			["displayText_format_c1_format"] = "none",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local function split(input) -- sligtly modfied version of WeakAuras.split function\n    input = input or \"\"\n    local ret = {}\n    local split, element = true\n    split = input:find(\"[,%s]\")\n    while(split) do\n        element, input = input:sub(1, split-1), input:sub(split+1)\n        if(element ~= \"\") then\n            ret[element] = true\n        end\n        split = input:find(\"[,%s]\")\n    end\n    if(input ~= \"\") then\n        ret[input] = true\n    end\n    return ret\nend\n\naura_env.otherTanks = split(aura_env.config.addtanks)\n\n\naura_env.ThreatFunc = function(unit)\n    local firstUnit, secondUnit\n    local firstThreat, secondThreat = 0, 0\n    local threat, pet\n    for member in WA_IterateGroupMembers() do\n        threat = select(5, UnitDetailedThreatSituation(member, unit))\n        if threat then\n            if threat > firstThreat then\n                secondUnit = firstUnit\n                secondThreat = firstThreat\n                firstUnit = member\n                firstThreat = threat\n            elseif threat > secondThreat then\n                secondUnit = member\n                secondThreat = threat\n            end\n        end\n        \n        pet = member..\"pet\"\n        if UnitExists(pet) then\n            threat = select(5, UnitDetailedThreatSituation(pet, unit))\n            if threat then\n                if threat > firstThreat then\n                    secondUnit = firstUnit\n                    secondThreat = firstThreat\n                    firstUnit = pet\n                    firstThreat = threat\n                elseif threat > secondThreat then\n                    secondUnit = pet\n                    secondThreat = threat\n                end\n            end\n        end\n    end\n    return firstUnit, firstThreat, secondUnit, secondThreat\nend",
					["do_custom"] = true,
				},
			},
			["config"] = {
				["addtanks"] = "Tank1, Tank2, Tank3",
			},
			["automaticWidth"] = "Auto",
			["displayText_format_p_time_precision"] = 1,
			["displayText_format_formatDiff_format"] = "none",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["affixes"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 40,
			["semver"] = "1.0.10",
			["justify"] = "LEFT",
			["id"] = "Threat Differential on Nameplates",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "NAMEPLATE",
			["desc"] = "Shows the threat difference between yourself and the party/raid member with the most threat on enemy nameplates.\n\nColor determined by Tankstatus:\n\"Tanking\"  (default: green)\n\"Insecurely Tanking\" (default: yellow \"!!!\")\n\"Tanked by Other Tank\"  (default: blue)\n\"Untanked\" (default: red)",
			["anchorFrameParent"] = true,
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "status",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 2,
						["variable"] = "status",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 3,
						["variable"] = "status",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 4,
						["variable"] = "status",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_c_format"] = "none",
		},
		["deoco!!!!"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = false,
					["width"] = 1,
					["default"] = "Ledémoniste",
					["multiline"] = false,
					["name"] = "Player name",
					["length"] = 10,
					["key"] = "playerName",
					["useLength"] = false,
				}, -- [1]
			},
			["displayText"] = "REOCNNECTE %c!!!!!!!!",
			["customText"] = "function()\n  return aura_env.config.playerName\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_format_c_format"] = "none",
					["message_custom"] = "function()\n  return 'Reconnect ' .. aura_env.config.playerName\nend",
					["do_sound"] = false,
					["message_type"] = "TTS",
					["message"] = "%c",
					["do_message"] = true,
					["message_tts_voice"] = 0,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["custom"] = "function(event, msg, sender)\n  if msg == aura_env.config.playerName .. ' has gone offline.' then\n    return true\n  end\nend",
						["names"] = {
						},
						["custom_type"] = "event",
						["events"] = "CHAT_MSG_SYSTEM",
						["spellIds"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function(event, msg, sender)\n  local pattern = aura_env.config.playerName .. '.-online'\n  if string.find(msg, pattern) then\n    return true\n  end\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 150,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["displayText_format_c_format"] = "none",
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["internalVersion"] = 59,
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["xOffset"] = 0,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["config"] = {
				["playerName"] = "Pydd",
			},
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "deoco!!!!",
			["displayText_format_p_time_mod_rate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["uid"] = "YMPX21Dub4h",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Intellect "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nintellect\n|T135932:0|t |cFFFFFFFFArcane Intellect|r\n|T135869:0|t |cFFFFFFFFArcane Brilliance|r\n|T236509:0|t |cFFFFFFFFDalaran Intellect|r\n|T236512:0|t |cFFFFFFFFDalaran Brilliance|r\n|T136125:0|t |cFFFFFFFFFel Intelligence|r]],\n    classes[8].class, classes[9].class\n)\n\naura_env.icon = 135932\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"1459", -- [1]
							"23028", -- [2]
							"61024", -- [3]
							"61316", -- [4]
							"54424", -- [5]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Intellect ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "xYEnHHHyXbg",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135932",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Spell buffs  "] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Intellect  ", -- [1]
				"Spirit  ", -- [2]
				"Spell Power  ", -- [3]
				"Spell Crit 5%  ", -- [4]
				"Spell Haste 5%  ", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Player] buffs  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "135143",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Spirit  "] = false,
				["Spell Power  "] = false,
				["Spell Crit 5%  "] = false,
				["Intellect  "] = false,
				["Spell Haste 5%  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell buffs  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "Kyg8E58G0bm",
			["arcLength"] = 360,
			["yOffset"] = -52,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["Spirit "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nspirit\n|T135898:0|t |cFFFFFFFFDivine Spirit|r\n|T135946:0|t |cFFFFFFFFPrayer of Spirit|r\n|T136125:0|t |cFFFFFFFFFel Intelligence|r]],\n    classes[5].class, classes[9].class\n)\n\naura_env.icon = 135898\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"14752", -- [1]
							"27681", -- [2]
							"54424", -- [3]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spirit ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "z3kUeRF6Veh",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135898",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["deoco!!!! pyddz"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = false,
					["width"] = 1,
					["default"] = "Ledémoniste",
					["key"] = "playerName",
					["multiline"] = false,
					["length"] = 10,
					["name"] = "Player name",
					["useLength"] = false,
				}, -- [1]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n  return aura_env.config.playerName\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_tts_voice"] = 0,
					["message_custom"] = "function()\n  return 'Reconnect ' .. aura_env.config.playerName\nend",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["message"] = "%c",
					["do_message"] = true,
					["message_type"] = "TTS",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
						["custom"] = "function(event, msg, sender)\n  if msg == aura_env.config.playerName .. ' has gone offline.' then\n    return true\n  end\nend",
						["spellIds"] = {
						},
						["events"] = "CHAT_MSG_SYSTEM",
						["custom_type"] = "event",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event, msg, sender)\n  local pattern = aura_env.config.playerName .. '.-online'\n  if string.find(msg, pattern) then\n    return true\n  end\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 150,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["displayText_format_p_time_legacy_floor"] = false,
			["regionType"] = "text",
			["displayText_format_c_format"] = "none",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["yOffset"] = 0,
			["displayText"] = "REOCNNECTE %c!!!!!!!!",
			["uid"] = "K1fX5FpnEXZ",
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "deoco!!!! pyddz",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["displayText_format_p_time_mod_rate"] = true,
			["config"] = {
				["playerName"] = "Pyddz",
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["xOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["wordWrap"] = "WordWrap",
		},
		["Strength and Agility  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nstrength + agility\n|T134228:0|t |cFFFFFFFFHorn of Winter|r\n|T136023:0|t |cFFFFFFFFStrength of Earth Totem|r]],\n    classes[6].class, classes[7].class\n)\n\naura_env.icon = 134228\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"57330", -- [1]
							"8076", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Strength and Agility  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "7kngasNAYor",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "134228",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["RAID_BLOODLUSTS"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "32182",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["spellName"] = 0,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_spellId"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "40",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["barColor"] = {
				0, -- [1]
				0.3882352941176471, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_precision"] = 1,
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 10,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_text_format_p_format"] = "timed",
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_1.sourceName_format"] = "none",
					["text_text"] = "%1.sourceName",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = -10,
					["text_color"] = {
						1, -- [1]
						0.9333333333333333, -- [2]
						0.9450980392156862, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_1.sourceFlags_format"] = "none",
				}, -- [4]
				{
					["border_offset"] = 1,
					["border_anchor"] = "bar",
					["border_size"] = 4,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Blizzard Dialog",
					["type"] = "subborder",
				}, -- [5]
			},
			["height"] = 25,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "LzEo3vVISmA",
			["sparkOffsetX"] = 0,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["selfPoint"] = "CENTER",
			["parent"] = "RAID_BLOODLUSTS_GROUP",
			["icon_side"] = "RIGHT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 30,
			["texture"] = "Minimalist",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["spark"] = false,
			["width"] = 200,
			["sparkHidden"] = "NEVER",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["id"] = "RAID_BLOODLUSTS",
			["config"] = {
			},
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132313,
			["information"] = {
				["forceEvents"] = true,
			},
			["icon"] = true,
		},
		["Attack Power 10% "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s %s%s\nattack power 10%%\n|T236310:0|t |cFFFFFFFFAbomination's Might|r\n|T136110:0|t |cFFFFFFFFUnleashed Rage|r\n|T132329:0|t |cFFFFFFFFTrueshot Aura|r]],\n    classes[6].class, classes[6].spec1,\n    classes[7].class, classes[7].spec2,\n    classes[3].class, classes[3].spec2\n)\n\naura_env.icon = 236310\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"53137", -- [1]
							"30802", -- [2]
							"19506", -- [3]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Attack Power 10% ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "M8pEy8vYeAk",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "236310",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_IOL_2"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_action"] = "show",
					["glow_type"] = "buttonOverlay",
					["glow_frame"] = "ElvUI_Bar1Button3",
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"54149", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["displayText_format_p_time_legacy_floor"] = false,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["displayText_format_p_time_precision"] = 1,
			["fixedWidth"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText"] = " ",
			["justify"] = "LEFT",
			["yOffset"] = 0,
			["id"] = "HOLY_PAL_IOL_2",
			["uid"] = "x)VEWdND1fJ",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["xOffset"] = 0,
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "HOLY_PAL_UTIL",
		},
		["Strength and Agility "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nstrength + agility\n|T134228:0|t |cFFFFFFFFHorn of Winter|r\n|T136023:0|t |cFFFFFFFFStrength of Earth Totem|r]],\n    classes[6].class, classes[7].class\n)\n\naura_env.icon = 134228\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"57330", -- [1]
							"8076", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Strength and Agility ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Sp8lWCHdaFK",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "134228",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["[Smart group] buffs - unaffected tooltip  "] = {
			["controlledChildren"] = {
				"Shared buffs", -- [1]
				"Physical buffs", -- [2]
				"Spell buffs", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "services-number-1",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 3,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["yOffset"] = 0,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "[Smart group] buffs - unaffected tooltip  ",
			["parent"] = "!Raid Auras Watcher",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["uid"] = "OPrIKvwGvOR",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 0,
		},
		["Melee Haste 20% "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n20%% melee haste\n|T252994:0|t |cFFFFFFFFImproved Icy Talons|r\n|T136114:0|t |cFFFFFFFFImproved Windfury Totem|r]],\n    classes[6].class, classes[6].spec2,\n    classes[7].class, classes[7].spec2\n)\n\naura_env.icon = 252994\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"55610", -- [1]
							"29193", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Melee Haste 20% ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "R(kQvBcPV6E",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "252994",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Haste 3%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s\n3%% haste\n|T236156:0|t |cFFFFFFFFImproved Moonkin Form|r\n|T236266:0|t |cFFFFFFFFSwift Retribution (hidden)|r]],\n    classes[11].class, classes[11].spec1,\n    classes[2].class, classes[2].spec3\n)\n\naura_env.icon = 236156\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"24907", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Haste 3%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "gyXSv(7f8P2",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "236156",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Attack Power value  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nattack power value\n|T135906:0|t |cFFFFFFFFBlessing of Might|r\n|T135908:0|t |cFFFFFFFFGreater Blessing of Might|r\n|T132333:0|t |cFFFFFFFFBattle Shout|r]],\n    classes[2].class, classes[1].class\n)\n\naura_env.icon = 135908\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"19740", -- [1]
							"25782", -- [2]
							"6673", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Attack Power value  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "xsLOh(BU3Rt",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135908",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Player Combat"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -390.11962890625,
			["displayText"] = "TARGET IN COMBAT",
			["yOffset"] = -417.3662719726563,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/BkTTm_Xtm/3",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\CatMeow2.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_form"] = false,
						["use_hostility"] = false,
						["use_absorbMode"] = true,
						["names"] = {
						},
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["status"] = -1,
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["spellName"] = 0,
						["events"] = "UNIT_POWER_FREQUENT ",
						["type"] = "custom",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["threatUnit"] = "target",
						["use_threatUnit"] = true,
						["event"] = "Health",
						["unevent"] = "auto",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["custom"] = "function()\n    return UnitAffectingCombat(\"player\")\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["custom_hide"] = "timed",
						["use_status"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["custom"] = "\n\n\n",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function()\n    local attackable = UnitName(\"target\")\n    local combat = UnitAffectingCombat(\"target\")\n    \n    if  attackable and combat then\n        return false\n    else\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_encounter"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["semver"] = "1.0.0",
			["uid"] = "uXE4GaFkYO)",
			["fontSize"] = 12,
			["selfPoint"] = "BOTTOM",
			["mirror"] = false,
			["desc"] = "This Weakaura indicates if you accidentally have a target that is not in the fight ..",
			["regionType"] = "texture",
			["fixedWidth"] = 200,
			["blendMode"] = "BLEND",
			["parent"] = "Combat icons",
			["discrete_rotation"] = 0,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-icon.tga",
			["width"] = 50,
			["alpha"] = 1,
			["justify"] = "LEFT",
			["tocversion"] = 90005,
			["id"] = "Player Combat",
			["color"] = {
				1, -- [1]
				0.1098039215686275, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["automaticWidth"] = "Auto",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["wordWrap"] = "WordWrap",
		},
		["HOLY_PALA_HS"] = {
			["iconSource"] = -1,
			["xOffset"] = -4.38690185546875e-05,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["use_showgcd"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Holy Shock",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["spellName"] = 20473,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = true,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[102] = true,
						[17] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["uid"] = "MSZhJp5gnDi",
			["id"] = "HOLY_PALA_HS",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["parent"] = "HOLY_PAL_HEAL",
		},
		["Unholy Frenzy  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Single player buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s\n20%% phys damage + 1%% hp/sec loss\n|T237512:0|t |cFFFFFFFFUnholy Frenzy|r]],\n    classes[6].class, classes[6].spec1\n)\n\naura_env.icon = 237512\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"49016", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Unholy Frenzy  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "iFsFia(Tt(D",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "237512",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["!Raid Auras Watcher"] = {
			["controlledChildren"] = {
				"[Smart group] buffs - unaffected tooltip  ", -- [1]
				"[Player] buffs  ", -- [2]
				"[Target] debuffs", -- [3]
				"[Player] resource  ", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "134149",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 3,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "!Raid Auras Watcher",
			["yOffset"] = 571.7178344726562,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["uid"] = "kblOrq8B2Cb",
			["borderInset"] = 1,
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 20.23046875,
		},
		["Reduction debuffs  "] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"Armor reduction 20%  ", -- [1]
				"Armor reduction 5%  ", -- [2]
				"Attack speed 20%  ", -- [3]
				"Attack power recution  ", -- [4]
				"Physical hit chance 3%  ", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Target] debuffs",
			["preferToUpdate"] = false,
			["groupIcon"] = "132363",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "RIGHT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Armor reduction 5%  "] = false,
				["Attack speed 20%  "] = false,
				["Attack power recution  "] = false,
				["Armor reduction 20%  "] = false,
				["Physical hit chance 3%  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Reduction debuffs  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "WNeg4bNBoZF",
			["arcLength"] = 360,
			["yOffset"] = -26,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = -5,
		},
		["Attack power recution  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Reduction debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s  %s  %s%s\nattack power reduction\n|T132366:0|t |cFFFFFFFFDemoralizing Shout|r\n|T132121:0|t |cFFFFFFFFDemoralizing Roar|r\n|T136138:0|t |cFFFFFFFFCurse of Weakness|r\n|T135985:0|t |cFFFFFFFFVindication|r]],\n    classes[1].class, classes[11].class,\n    classes[9].class,\n    classes[2].class, classes[2].spec3\n)\n\naura_env.icon = 132366\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"47437", -- [1]
							"48560", -- [2]
							"50511", -- [3]
							"26017", -- [4]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Attack power recution  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "K3mKKLLJxg3",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132366",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_NO_FLASK"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_action"] = "show",
					["glow_type"] = "buttonOverlay",
					["glow_frame"] = "ElvUI_Bar4Button4",
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["namePattern_operator"] = "find('%s')",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useName"] = false,
						["names"] = {
						},
						["spellIds"] = {
						},
						["auranames"] = {
							"Seal of Blood", -- [1]
						},
						["namePattern_name"] = "Flask of",
						["useNamePattern"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["displayText_format_p_time_legacy_floor"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "7ha7OpM7Yhy",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["selfPoint"] = "CENTER",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["mirror"] = false,
			["fixedWidth"] = 200,
			["regionType"] = "text",
			["internalVersion"] = 59,
			["blendMode"] = "BLEND",
			["displayText"] = " ",
			["shadowYOffset"] = -1,
			["displayText_format_p_time_precision"] = 1,
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["fontSize"] = 12,
			["width"] = 200,
			["justify"] = "LEFT",
			["alpha"] = 1,
			["id"] = "HOLY_PAL_NO_FLASK",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["discrete_rotation"] = 0,
			["displayText_format_p_format"] = "timed",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "HOLY_PAL_UTIL",
		},
		["Attack Power 10%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Physical buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s %s%s\nattack power 10%%\n|T236310:0|t |cFFFFFFFFAbomination's Might|r\n|T136110:0|t |cFFFFFFFFUnleashed Rage|r\n|T132329:0|t |cFFFFFFFFTrueshot Aura|r]],\n    classes[6].class, classes[6].spec1,\n    classes[7].class, classes[7].spec2,\n    classes[3].class, classes[3].spec2\n)\n\naura_env.icon = 236310\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"53137", -- [1]
							"30802", -- [2]
							"19506", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Attack Power 10%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "JPJ(7g4Pem(",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "236310",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Shared buffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Bloodlist/Heroism", -- [1]
				"Blessing of Kings ", -- [2]
				"Blessing of Sanctuary", -- [3]
				"Mark/Gift of the Wild ", -- [4]
				"Stamina ", -- [5]
				"Health value ", -- [6]
				"Damage 3% ", -- [7]
				"Haste 3%", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Smart group] buffs - unaffected tooltip  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "136078",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Stamina "] = false,
				["Mark/Gift of the Wild "] = false,
				["Bloodlist/Heroism"] = false,
				["Blessing of Sanctuary"] = false,
				["Damage 3% "] = false,
				["Haste 3%"] = false,
				["Health value "] = false,
				["Blessing of Kings "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Shared buffs",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "cL7ON6ldSlR",
			["arcLength"] = 360,
			["yOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["Mark/Gift of the Wild "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\narmor + stats + resistance\n|T136078:0|t |cFFFFFFFFMark of the Wild|r\n|T136038:0|t |cFFFFFFFFGift of the Wild|r]],\n    classes[11].class\n)\n\naura_env.icon = 136038",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"9884", -- [1]
							"21849", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Mark/Gift of the Wild ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "UfRTQ6LZz3J",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136038",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["TRINKET_1"] = {
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["remaining"] = "5",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["spellName"] = 88625,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["use_remaining"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["use_itemSlot"] = true,
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Equipment Slot)",
						["realSpellName"] = "Holy Word: Chastise",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_testForCooldown"] = true,
						["unit"] = "player",
						["itemSlot"] = 13,
						["use_track"] = true,
						["remaining_operator"] = "<=",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["uid"] = "TW0y8OpngXl",
			["tocversion"] = 90005,
			["id"] = "TRINKET_1",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "TRINKETS",
		},
		["Single player buffs  "] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Power Infusion  ", -- [1]
				"Unholy Frenzy  ", -- [2]
				"Tricks of the Trade  ", -- [3]
				"Focus Magic  ", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Player] buffs  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "134148",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Focus Magic  "] = false,
				["Unholy Frenzy  "] = false,
				["Tricks of the Trade  "] = false,
				["Power Infusion  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Single player buffs  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "6XmKKxBp(H7",
			["arcLength"] = 360,
			["yOffset"] = -78,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["PRIEST_NO_STAM"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["useStacks"] = false,
						["auranames"] = {
							"Power Word: Fortitude", -- [1]
							"Prayer of Fortitude", -- [2]
						},
						["combinePerUnit"] = true,
						["names"] = {
						},
						["stacks"] = "0",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["useName"] = true,
						["stacksOperator"] = "==",
						["useExactSpellId"] = false,
						["perUnitMode"] = "unaffected",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["unit"] = "group",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useAffected"] = true,
						["useIgnoreName"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["parent"] = "PRIEST",
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["config"] = {
			},
			["id"] = "PRIEST_NO_STAM",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "UNITFRAME",
			["width"] = 25,
			["uid"] = "nCuEBtOmzvy",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Blessing of Kings "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\n10%% stats\n|T135995:0|t |cFFFFFFFFBlessing of Kings|r\n|T135993:0|t |cFFFFFFFFGreater Blessing of Kings|r]],\n    classes[2].class\n)\n\naura_env.icon = 135993",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"20217", -- [1]
							"25898", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Blessing of Kings ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "bIE46xPdjsj",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135993",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["HOLY_PAL_SS"] = {
			["iconSource"] = -1,
			["xOffset"] = -18,
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useStacks"] = false,
						["useExactSpellId"] = true,
						["group_countOperator"] = "==",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"53601", -- [1]
						},
						["group_count"] = "1",
						["names"] = {
						},
						["unit"] = "group",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 15,
			["load"] = {
				["use_class"] = true,
				["race"] = {
				},
				["talent"] = {
					["multi"] = {
						[12] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["regionType"] = "icon",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["frameStrata"] = 1,
			["config"] = {
			},
			["id"] = "HOLY_PAL_SS",
			["width"] = 15,
			["alpha"] = 1,
			["anchorFrameType"] = "UNITFRAME",
			["useCooldownModRate"] = true,
			["uid"] = "rBDe0QI2eyN",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "HOLY_PAL_UTIL",
		},
		["Armor reduction 20%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Reduction debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s  %s%s\n20%% armor reduction\n|T132363:0|t |cFFFFFFFFSunder Armor|r\n|T132354:0|t |cFFFFFFFFExpose Armor|r\n|T136007:0|t |cFFFFFFFFAcid Spit|r]],\n    classes[1].class, classes[4].class,\n    classes[3].class, classes[3].spec1\n)\n\naura_env.icon = 132363\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"7386", -- [1]
							"8647", -- [2]
							"55754", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%2.s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Fira Mono Medium",
					["text_anchorYOffset"] = 1,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "BOTTOMRIGHT",
					["text_text_format_2.s_format"] = "none",
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 11,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Armor reduction 20%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "0sBTDFk8PO2",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132135",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["deoco!!!! ksyh"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "function()\n  return aura_env.config.playerName\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_type"] = "TTS",
					["message_custom"] = "function()\n  return 'Reconnect ' .. aura_env.config.playerName\nend",
					["do_sound"] = false,
					["message_tts_voice"] = 0,
					["message"] = "%c",
					["do_message"] = true,
					["message_format_c_format"] = "none",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["custom"] = "function(event, msg, sender)\n  if msg == aura_env.config.playerName .. ' has gone offline.' then\n    return true\n  end\nend",
						["names"] = {
						},
						["custom_type"] = "event",
						["events"] = "CHAT_MSG_SYSTEM",
						["spellIds"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function(event, msg, sender)\n  local pattern = aura_env.config.playerName .. '.-online'\n  if string.find(msg, pattern) then\n    return true\n  end\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 150,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["displayText_format_c_format"] = "none",
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = false,
					["width"] = 1,
					["default"] = "Ledémoniste",
					["name"] = "Player name",
					["key"] = "playerName",
					["length"] = 10,
					["multiline"] = false,
					["useLength"] = false,
				}, -- [1]
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["config"] = {
				["playerName"] = "Ksyh",
			},
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "deoco!!!! ksyh",
			["displayText_format_p_time_mod_rate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "AIXJkqqwp5c",
			["displayText"] = "REOCNNECTE %c!!!!!!!!",
			["yOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
			},
			["displayText_format_p_time_legacy_floor"] = false,
		},
		["HOLY_PAL_IOL_1"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_action"] = "show",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = true,
					["glow_frame"] = "ElvUI_Bar1Button2",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"54149", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 59,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["displayText_format_p_time_mod_rate"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_precision"] = 1,
			["conditions"] = {
			},
			["parent"] = "HOLY_PAL_UTIL",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "HOLY_PAL_IOL_1",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 0,
			["uid"] = "144lQP6Xbi8",
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
			},
			["displayText_format_p_time_legacy_floor"] = false,
		},
		["RET_PAL_ART_OF_WAR"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -4.10260009765625,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auranames"] = {
							"The Art of War", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[105] = true,
					},
				},
				["use_talent"] = false,
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["cooldown"] = true,
			["parent"] = "RET_PAL",
			["xOffset"] = -243.6922607421875,
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["id"] = "RET_PAL_ART_OF_WAR",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 64,
			["uid"] = "S92z(nzFxqV",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_action"] = "show",
					["glow_type"] = "buttonOverlay",
					["glow_frame"] = "ElvUI_Bar1Button3",
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Physical buffs  "] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Attack Power value  ", -- [1]
				"Strength and Agility  ", -- [2]
				"Attack Power 10%  ", -- [3]
				"Physical Crit 5%  ", -- [4]
				"Melee Haste 20%  ", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Player] buffs  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "135274",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Melee Haste 20%  "] = false,
				["Attack Power value  "] = false,
				["Attack Power 10%  "] = false,
				["Strength and Agility  "] = false,
				["Physical Crit 5%  "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Physical buffs  ",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "a)oFJ1q4vC4",
			["arcLength"] = 360,
			["yOffset"] = -26,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["Spell Power  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Spell buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s(%s)  %s%s\nspell power\n|T135829:0|t |cFFFFFFFFTotem of Wrath|r\n|T136040:0|t |cFFFFFFFFFlametongue Totem|r\n|T237562:0|t |cFFFFFFFFDemonic Pact|r]],\n    classes[7].class, classes[7].spec1,\n    classes[9].class, classes[9].spec2\n)\n\naura_env.icon = 135829\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"30706", -- [1]
							"8227", -- [2]
							"47236", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Spell Power  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "eynsoaq4LzT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135829",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Physical buffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Attack Power value ", -- [1]
				"Strength and Agility ", -- [2]
				"Attack Power 10% ", -- [3]
				"Physical Crit 5% ", -- [4]
				"Melee Haste 20% ", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "[Smart group] buffs - unaffected tooltip  ",
			["preferToUpdate"] = false,
			["groupIcon"] = "135274",
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 1,
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["animate"] = false,
			["frameStrata"] = 1,
			["rotation"] = 0,
			["radius"] = 200,
			["version"] = 3,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["stagger"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["Attack Power 10% "] = false,
				["Strength and Agility "] = false,
				["Melee Haste 20% "] = false,
				["Physical Crit 5% "] = false,
				["Attack Power value "] = false,
			},
			["source"] = "import",
			["fullCircle"] = true,
			["scale"] = 1,
			["config"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Physical buffs",
			["rowSpace"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "j9mKjIdm15N",
			["arcLength"] = 360,
			["yOffset"] = -26,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = 5,
		},
		["RET_PAL_CS"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["spellName"] = 35395,
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Crusader Strike",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = true,
				["talent"] = {
					["single"] = 102,
					["multi"] = {
						[102] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["cooldown"] = true,
			["parent"] = "HOLY_PAL_HEAL",
			["xOffset"] = -4.38690185546875e-05,
			["authorOptions"] = {
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["frameStrata"] = 1,
			["config"] = {
			},
			["id"] = "RET_PAL_CS",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "LqPRA)LbPIe",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["RAID_BLOODLUSTS_GROUP"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"RAID_BLOODLUSTS", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -276.0001220703125,
			["yOffset"] = 99.02569580078125,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "BOTTOM",
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["arcLength"] = 360,
			["animate"] = false,
			["sort"] = "none",
			["scale"] = 1,
			["useLimit"] = false,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["gridType"] = "RD",
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["uid"] = "j2ylK3sNTyr",
			["rotation"] = 0,
			["id"] = "RAID_BLOODLUSTS_GROUP",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fullCircle"] = true,
			["borderInset"] = 1,
			["internalVersion"] = 59,
			["rowSpace"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["authorOptions"] = {
			},
		},
		["TRINKETS"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"TRINKET_1", -- [1]
				"TRINKET_2", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -380,
			["preferToUpdate"] = false,
			["yOffset"] = 70,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 59,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["rotation"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "sqWVAfcAUp(",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["animate"] = true,
			["sort"] = "none",
			["scale"] = 1,
			["fullCircle"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["rowSpace"] = 1,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["borderInset"] = 1,
			["borderOffset"] = 4,
			["radius"] = 200,
			["tocversion"] = 90005,
			["id"] = "TRINKETS",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["stagger"] = 0,
			["config"] = {
			},
			["arcLength"] = 360,
			["useLimit"] = false,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["selfPoint"] = "LEFT",
		},
		["Tricks of the Trade  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Single player buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\n15%% damage + caster threat\n|T236283:0|t |cFFFFFFFFTricks of the Trade|r]],\n    classes[4].class\n)\n\naura_env.icon = 236283\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"57934", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Tricks of the Trade  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Gz6PQ(1Jrk1",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "236283",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Focus Magic  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Single player buffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s\n3%% crit + 3%% caster's crit\n|T135754:0|t |cFFFFFFFFFocus Magic|r]],\n    classes[8].class, classes[8].spec1\n)\n\naura_env.icon = 135754\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"54646", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Focus Magic  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "CIL3INMBw2O",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135754",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Bloodlist/Heroism"] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Shared buffs",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nbloodlust/heroism\n|T136012:0|t |cFFFFFFFFBloodlust|r\n|T132313:0|t |cFFFFFFFFHeroism|r]],\n    classes[7].class, classes[8].class\n)\n\naura_env.icon = 136012\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event, n, data)\n    local text = \"\"\n    if data and data[\"\"] and data[\"\"].unaffected then\n        local unaffected = data[\"\"].unaffected\n        if unaffected then\n            local formatted = unaffected:gsub(\", \", \"\\n\")\n            formatted = formatted:gsub(\"%p\", \"\")\n            for i in string.gmatch(formatted, \"%S+\") do\n                local class = select(2, UnitClass(i))\n                local name = i\n                \n                if class then\n                    name = RAID_CLASS_COLORS[class]:WrapTextInColorCode(Ambiguate(i, \"short\"))\n                end\n                \n                if name and name ~= \"\" then\n                    text = text..name..\"|n\"\n                end\n            end\n        end\n    end\n    \n    local tooltip = text ~= \"\" and format(\"%s|n|n%s\", aura_env.tooltip, text) or aura_env.tooltip\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS TRIGGER:2",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"2825", -- [1]
							"32182", -- [2]
						},
						["unit"] = "group",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["group_countOperator"] = "<",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["combineMode"] = "showHighest",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["useGroup_count"] = true,
						["useName"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.75,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Bloodlist/Heroism",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "SL3fkUeVsAA",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136012",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["CD DEFS"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["animate"] = false,
			["useLimit"] = false,
			["scale"] = 1,
			["internalVersion"] = 59,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["fullCircle"] = true,
			["arcLength"] = 360,
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["uid"] = "G6h4PsHMNiF",
			["rowSpace"] = 1,
			["id"] = "CD DEFS",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["gridType"] = "RD",
			["borderInset"] = 1,
			["limit"] = 5,
			["rotation"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Target Combat"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.1098039215686275, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "TARGET IN COMBAT",
			["yOffset"] = -418.4603576660156,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/BkTTm_Xtm/3",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\CatMeow2.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_form"] = false,
						["use_hostility"] = false,
						["use_absorbMode"] = true,
						["unit"] = "target",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["status"] = -1,
						["spellName"] = 0,
						["events"] = "UNIT_POWER_FREQUENT ",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["type"] = "custom",
						["custom"] = "function()\n    return UnitAffectingCombat(\"target\")\nend",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["realSpellName"] = 0,
						["threatUnit"] = "target",
						["custom_hide"] = "timed",
						["use_threatUnit"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["check"] = "update",
						["use_status"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["custom"] = "\n\n\n",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function()\n    local attackable = UnitName(\"target\")\n    local combat = UnitAffectingCombat(\"target\")\n    \n    if  attackable and combat then\n        return false\n    else\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 59,
			["wordWrap"] = "WordWrap",
			["desc"] = "This Weakaura indicates if you accidentally have a target that is not in the fight ..",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = false,
			["load"] = {
				["use_encounter"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["justify"] = "LEFT",
			["config"] = {
			},
			["fontSize"] = 12,
			["desaturate"] = false,
			["mirror"] = false,
			["selfPoint"] = "BOTTOM",
			["regionType"] = "texture",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["blendMode"] = "BLEND",
			["parent"] = "Combat icons",
			["discrete_rotation"] = 0,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-icon.tga",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["semver"] = "1.0.0",
			["tocversion"] = 90005,
			["id"] = "Target Combat",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 50,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["uid"] = "8oBkA7x)GXF",
			["xOffset"] = 385.5389404296875,
			["preferToUpdate"] = false,
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["automaticWidth"] = "Auto",
		},
		["Mana restoration mp5  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Resource return  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s  %s\nmp5\n|T135970:0|t |cFFFFFFFFBlessing of Wisdom|r\n|T135912:0|t |cFFFFFFFFGreater Blessing of Wisdom|r\n|T136053:0|t |cFFFFFFFFMana Spring Totem|r]],\n    classes[2].class, classes[7].class\n)\n\naura_env.icon = 135912\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"19742", -- [1]
							"25894", -- [2]
							"25569", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "~=",
						["value"] = 0,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Mana restoration mp5  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "i3HRPbFW9GU",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135912",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Attack speed 20%  "] = {
			["iconSource"] = -1,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Reduction debuffs  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s%s  %s%s  %s%s  %s%s\n20%% attack speed reduction\n|T136105:0|t |cFFFFFFFFImproved Thunder Clap (hidden)|r\n|T236259:0|t |cFFFFFFFFJudgements of the Just|r\n|T236158:0|t |cFFFFFFFFInfected Wounds|r\n|T237526:0|t |cFFFFFFFFImproved Icy Touch (hidden)|r]],\n    classes[1].class, classes[1].spec3,\n    classes[2].class, classes[2].spec2,\n    classes[11].class, classes[11].spec2,\n    classes[6].class, classes[6].spec2\n)\n\naura_env.icon = 136105\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"47502", -- [1]
							"68055", -- [2]
							"58181", -- [3]
							"55095", -- [4]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [3]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Attack speed 20%  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "g6kGnm6dgvM",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "136105",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
		["Judgement of Light  "] = {
			["iconSource"] = 0,
			["wagoID"] = "I4ns-_A8y",
			["parent"] = "Resource return  ",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    [1] = { --WARRIOR\n        class = \"|T626008:20|t\", --132355\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132347:20|t\",\n        spec3 = \"|T134952:20|t\",\n    },\n    [2] = { --PALADIN\n        class = \"|T626003:20|t\",\n        spec1 = \"|T135920:20|t\",\n        spec2 = \"|T135893:20|t\",\n        spec3 = \"|T135873:20|t\",\n    },\n    [3] = { --HUNTER\n        class = \"|T626000:20|t\",\n        spec1 = \"|T132164:20|t\",\n        spec2 = \"|T132222:20|t\",\n        spec3 = \"|T132215:20|t\",\n    },\n    [4] = { --ROGUE\n        class = \"|T626005:20|t\",\n        spec1 = \"|T132292:20|t\",\n        spec2 = \"|T132090:20|t\",\n        spec3 = \"|T132320:20|t\",\n    },\n    [5] = { --PRIEST\n        class = \"|T626004:20|t\",\n        spec1 = \"|T135987:20|t\",\n        spec2 = \"|T237542:20|t\",\n        spec3 = \"|T136207:20|t\",\n    },\n    [6] = { --DEATHKNIGHT\n        class = \"|T135771:20|t\",\n        spec1 = \"|T135770:20|t\",\n        spec2 = \"|T135773:20|t\",\n        spec3 = \"|T135775:20|t\",\n    },\n    [7] = { --SHAMAN\n        class = \"|T626006:20|t\",\n        spec1 = \"|T136048:20|t\",\n        spec2 = \"|T136051:20|t\",\n        spec3 = \"|T136052:20|t\",\n    },\n    [8] = { --MAGE\n        class = \"|T626001:20|t\",\n        spec1 = \"|T135932:20|t\",\n        spec2 = \"|T135812:20|t\",\n        spec3 = \"|T135846:20|t\",\n    },\n    [9] = { --WARLOCK\n        class = \"|T626007:20|t\",\n        spec1 = \"|T136145:20|t\",\n        spec2 = \"|T136172:20|t\",\n        spec3 = \"|T136186:20|t\",\n    },\n    [11] = { --DRUID\n        class = \"|T625999:20|t\",\n        spec1 = \"|T136096:20|t\",\n        spec2 = \"|T132276:20|t\",\n        spec3 = \"|T136041:20|t\",\n    },\n}\n\naura_env.tooltip = format([[%s\nhealth on hit\n|T135959:0|t |cFFFFFFFFJudgement of Light|r]],\n    classes[2].class\n)\n\naura_env.icon = 135959\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["custom"] = "function(states, event)\n    states[\"\"] = {\n        icon = aura_env.icon,\n        tooltip = aura_env.tooltip,\n        changed = true,\n        show = true,\n    }\n    return true\nend",
						["events"] = "WA_WOTLK_AURAS",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "target",
						["group_count"] = "100%",
						["ignoreInvisible"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = "<",
						["event"] = "Health",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = true,
						["auranames"] = {
							"20185", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["combineMode"] = "showHighest",
						["useAffected"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level"] = "80",
				["level_operator"] = "==",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "buffed",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["internalVersion"] = 59,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.5,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 30400,
			["id"] = "Judgement of Light  ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 25,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "BDpinl25Ts2",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "135959",
			["information"] = {
				["forceEvents"] = true,
			},
			["url"] = "https://wago.io/RaidAurasWOTLK/3",
		},
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1613854499,
	["minimap"] = {
		["minimapPos"] = 177.0353109502158,
		["hide"] = true,
	},
	["lastUpgrade"] = 1666885268,
	["dbVersion"] = 59,
	["editor_font_size"] = 12,
	["registered"] = {
	},
	["personalRessourceDisplayFrame"] = {
		["xOffset"] = -1507.036682128906,
		["yOffset"] = -682.8460998535156,
	},
	["frame"] = {
		["xOffset"] = -500.0111083984375,
		["yOffset"] = -105.229736328125,
		["height"] = 665.0001220703125,
		["width"] = 830,
	},
	["instanceHistoryDb"] = {
		["sess"] = {
			["histOldest"] = "8 |4Min:Mins;",
			["histLastZone"] = "Pydd - Sulfuron:Scarlet Monastery:party:1:523",
			["histInGroup"] = "PARTY",
			["delayUpdate"] = 1633698798,
			["enterLoc"] = {
				["instance"] = 189,
				["subzone"] = "",
			},
			["delayedReset"] = false,
			["histLiveCount"] = 5,
		},
		["History"] = {
			["Pydd - Sulfuron:Scarlet Monastery:party:1:517"] = {
				["last"] = 1633696355,
				["create"] = 1633695715,
				["desc"] = "Pydd - Sulfuron: Scarlet Monastery - Normal",
			},
			["Pydd - Sulfuron:Scarlet Monastery:party:1:515"] = {
				["last"] = 1633695701,
				["create"] = 1633695036,
				["desc"] = "Pydd - Sulfuron: Scarlet Monastery - Normal",
			},
			["Pydd - Sulfuron:Scarlet Monastery:party:1:523"] = {
				["last"] = 1633698805,
				["create"] = 1633698798,
				["desc"] = "Pydd - Sulfuron: Scarlet Monastery - Normal",
			},
			["Pydd - Sulfuron:Scarlet Monastery:party:1:519"] = {
				["last"] = 1633697606,
				["create"] = 1633696365,
				["desc"] = "Pydd - Sulfuron: Scarlet Monastery - Normal",
			},
			["Pydd - Sulfuron:Scarlet Monastery:party:1:521"] = {
				["last"] = 1633698793,
				["create"] = 1633698138,
				["desc"] = "Pydd - Sulfuron: Scarlet Monastery - Normal",
			},
		},
		["histGeneration"] = 523,
		["config"] = {
			["displayMin"] = 2,
			["debug"] = false,
			["updateInterval"] = 5,
			["ShowServer"] = false,
			["ReportResets"] = true,
		},
		["Instances"] = {
		},
	},
	["editor_theme"] = "Monokai",
}
