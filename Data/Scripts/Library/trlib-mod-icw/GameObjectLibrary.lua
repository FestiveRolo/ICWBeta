--******************************************************************************
--     _______ __
--    |_     _|  |--.----.---.-.--.--.--.-----.-----.
--      |   | |     |   _|  _  |  |  |  |     |__ --|
--      |___| |__|__|__| |___._|________|__|__|_____|
--     ______
--    |   __ \.-----.--.--.-----.-----.-----.-----.
--    |      <|  -__|  |  |  -__|     |  _  |  -__|
--    |___|__||_____|\___/|_____|__|__|___  |_____|
--                                    |_____|
--*   @Author:              [TR]Pox <Pox>
--*   @Date:                2018-01-06T18:36:14+01:00
--*   @Project:             Imperial Civil War
--*   @Filename:            GameObjectLibrary.lua
--*   @Last modified by:    [TR]Pox
--*   @Last modified time:  2018-04-12T00:17:51+02:00
--*   @License:             This source code may only be used with explicit permission from the developers
--*   @Copyright:           © TR: Imperial Civil War Development Team
--******************************************************************************



require("trlib-util/Comparators")
require("trlib-galaxy/PlanetModifiers")

GameObjectLibrary = {
    Interdictors={
        "Massias_Interdictor",
        "Eclipse_Star_Destroyer",
        "Sovereign",
        "Generic_Interdictor_Cruiser",
        "Generic_Dominator",
        "Phulik_Binder",
        "Iillor_Corusca",
        "CC7700"
    },
    Numbers={
        "Display_One",
        "Display_Two",
        "Display_Three",
        "Display_Four",
        "Display_Five",
        "Display_Six",
        "Display_Seven",
        "Display_Eight",
        "Display_Nine",
        "Display_Ten"
    },
    CommonFactionStructures = {
        ["EMPIRE"] = {
			CapitalBuilding = "Remnant_Capital",
			LocalCapital = "Empire_MoffPalace",
            MiningStation = "Empire_Ground_Mining_Facility",
            TradePort = "Generic_Tradestation",
            Barracks = "E_Ground_Barracks",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["REBEL"] = {
			CapitalBuilding = "NewRep_Senate",		
			LocalCapital = "NewRep_SenatorsOffice", 
			MiningStation = "Rebel_Ground_Mining_Facility",
            TradePort = "Generic_Tradestation",
            Barracks = "R_Ground_Barracks",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["UNDERWORLD"] = {
            CapitalBuilding = "U_Ground_Palace",
			LocalCapital = "Hand_GovernorOffice", 
            MiningStation = "U_Ground_Mining_Facility",
            TradePort = "Generic_Tradestation",
            Barracks = "U_Ground_Barracks",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["PENTASTAR"] = {
			CapitalBuilding = "PA_Capital",
			LocalCapital = "Pentastar_MoffPalace",
            MiningStation = "",
            TradePort = "Generic_Tradestation",
            Barracks = "",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["TERADOC"] = {
			CapitalBuilding = "Maldrood_Capital",
			LocalCapital = "Maldrood_MoffPalace",
            MiningStation = "",
            TradePort = "Generic_Tradestation",
            Barracks = "",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["PIRATES"] = {
			CapitalBuilding = "Rancor_Base",
			LocalCapital = "Zsinj_MoffPalace",
            MiningStation = "",
            TradePort = "Generic_Tradestation",
            Barracks = "",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["HUTTS"] = {
			CapitalBuilding = "Eriadu_Capital",
			LocalCapital = "Eriadu_MoffPalace",
            MiningStation = "",
            TradePort = "Generic_Tradestation",
            Barracks = "",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        },
        ["CORPORATE_SECTOR"] = {
			CapitalBuilding = "CSA_Capital",
			LocalCapital = "CSA_LocalOffice",
            MiningStation = "",
            TradePort = "Generic_Tradestation",
            Barracks = "",
            LightFactory = "",
            HeavyFactory = "",
            Starbase_1 = "",
            Starbase_2 = "",
            Starbase_3 = ""
        }
    },
    OrbitalStructures={
        ["EMPRESS_STATION"]={
            Text="TEXT_DISPLAY_EMPRESS",
            Equation = "Planet_Has_Empress"
        },
        ["EMPIRE_GOLAN_THREE_STRATEGIC"]={
            Text="TEXT_DISPLAY_GOLAN_THREE_STATION",
            Equation = "Planet_Has_Golan_Three"
        },
        ["REBEL_GOLAN_ONE"]={
            Text="TEXT_DISPLAY_GOLAN_ONE_STATION",
            Equation = "Planet_Has_Golan_One"
        },
        ["OTO"]={
            Text="TEXT_DISPLAY_OTO",
            Equation = "Planet_Has_Oto"
        },
        ["BRASK"]={
            Text="TEXT_DISPLAY_BRASK",
            Equation = "Planet_Has_Brask"
        },
        ["VISVIA"]={
            Text="TEXT_DISPLAY_VISVIA",
            Equation = "Planet_Has_Visvia"
        },
        ["REBEL_GOLAN_THREE_STRATEGIC"]={
            Text="TEXT_DISPLAY_GOLAN_THREE_STATION",
            Equation = "Planet_Has_Golan_Three"
        },
        ["EMPIRE_GOLAN_TWO"]={
            Text="TEXT_DISPLAY_GOLAN_TWO_STATION",
            Equation = "Planet_Has_Golan_Two"
        },
        ["GENERIC_TRADESTATION"]={
            Text="TEXT_DISPLAY_TRADE",
            Equation = "Planet_Has_Trade_Station",
            Modifier = PlanetModifiers.trade_port_credit_boost
        },
        ["REBEL_GOLAN_TWO_STRATEGIC"]={
            Text="TEXT_DISPLAY_GOLAN_TWO_STATION",
            Equation = "Planet_Has_Golan_Two"
        },
        ["PIRATE_BASE"]={
            Text="TEXT_DISPLAY_TAVIRA",
            Equation = "Planet_Has_Pirate_Base"
        },
        ["REBEL_GOLAN_TWO"]={
            Text="TEXT_DISPLAY_GOLAN_TWO_STATION",
            Equation = "Planet_Has_Golan_Two"
        },
        ["EMPIRE_GOLAN_THREE"]={
            Text="TEXT_DISPLAY_GOLAN_THREE_STATION",
            Equation = "Planet_Has_Golan_Three"
        },
        ["REBEL_GOLAN_THREE"]={
            Text="TEXT_DISPLAY_GOLAN_THREE_STATION",
            Equation = "Planet_Has_Golan_Three"
        },
        ["VALIDUSIA"]={
            Text="TEXT_DISPLAY_VALIDUSIA",
            Equation = "Planet_Has_Validusia"
        },
        ["EMPIRE_GOLAN_ONE"]={
            Text="TEXT_DISPLAY_GOLAN_ONE_STATION",
            Equation = "Planet_Has_Golan_One"
        },
        ["EMPIRE_GOLAN_TWO_STRATEGIC"]={
            Text="TEXT_DISPLAY_GOLAN_TWO_STATION",
            Equation = "Planet_Has_Golan_Two"
        },
        ["RANCOR_BASE"]={
            Text="TEXT_DISPLAY_RANCOR_BASE",
            Equation = "Planet_Has_Rancor_Base"
        },
        ["BLACK_15"]={
            Text="TEXT_DISPLAY_BLACK15",
            Equation = "Planet_Has_Black_Fifteen"
        },
        ["SLAYN_KORPIL"]={
            Text="TEXT_DISPLAY_SLAYN_KORPIL",
            Equation = "Planet_Has_Slayn_Korpil"
        },
    --  ["CREW_RESOURCE_DUMMY"]={
    --      Text="TEXT_DISPLAY_SLAYN_KORPIL"
    --  },
    --    ["PLACEHOLDER_CATEGORY_DUMMY"]={
    --        Text="TEXT_DISPLAY_PLACEHOLDER_CATEGORY_DUMMY"
    --    },
    --    ["NON_CAPITAL_CATEGORY_DUMMY"]={
    --        Text="TEXT_DISPLAY_NON_CAPITAL_CATEGORY_DUMMY"
    --    },
    --    ["CAPITAL_CATEGORY_DUMMY"]={
    --        Text="TEXT_DISPLAY_CAPITAL_CATEGORY_DUMMY"
    --    },
    --    ["STRUCTURE_CATEGORY_DUMMY"]={
    --        Text="TEXT_DISPLAY_STRUCTURE_CATEGORY_DUMMY"
    --    }

    },
    InfluenceLevels = { 
		["INFLUENCE_ONE"]={
            --Equation = "Planet_Has_Influence_One"
        },
		["INFLUENCE_TWO"]={
            --Equation = "Planet_Has_Influence_Two"
        },
		["INFLUENCE_THREE"]={
            --Equation = "Planet_Has_Influence_Three"
        },
		["INFLUENCE_FOUR"]={
            --Equation = "Planet_Has_Influence_Four"
        },
		["INFLUENCE_FIVE"]={
            --Equation = "Planet_Has_Influence_Five"
        },
		["INFLUENCE_SIX"]={
            --Equation = "Planet_Has_Influence_Six"
        },
		["INFLUENCE_SEVEN"]={
           --Equation = "Planet_Has_Influence_Seven"
        },
		["INFLUENCE_EIGHT"]={
            --Equation = "Planet_Has_Influence_Eight"
        },
        ["INFLUENCE_NINE"]={
            --Equation = "Planet_Has_Influence_Nine"
        },
		["INFLUENCE_TEN"]={
            --Equation = "Planet_Has_Influence_Ten"
        },
        ["BONUS_PLACEHOLDER"]={
            --Equation = "Planet_Has_Influence_Bonus"
        },
    },
    GroundStructures = { 
		["REMNANT_CAPITAL"]={
            Equation = "Planet_Has_Capital"
        },
		["PA_CAPITAL"]={
            Equation = "Planet_Has_Capital"
        },
		["MALDROOD_CAPITAL"]={
            Equation = "Planet_Has_Capital"
        },
		["ERIADU_CAPITAL"]={
            Equation = "Planet_Has_Capital"
        },
		["NEWREP_SENATE"]={
            Equation = "Planet_Has_Capital"
        },
		["RANCOR_BASE"]={
            Equation = "Planet_Has_Capital"
        },
		["CSA_CAPITAL"]={
            Equation = "Planet_Has_Capital"
        },
		["U_GROUND_PALACE"]={
            Equation = "Planet_Has_Capital"
        },
    },
    Units={
		["Iillor_Corusca"]={
			Scripts={
				"InterdictorAI"
			},
			Fighters={
			},
		},
		["Phulik_Binder"]={
			Scripts={
				"InterdictorAI"
			},
			Fighters={
			},
		},
		["Eclipse_Star_Destroyer"]={
			Scripts={
				"InterdictorAI"
			},
			Fighters={
			},
		},
		["CC7700"]={
			Scripts={
				"MultiLayer",
				"InterdictorAI"
			},
			Fighters={
			}
		},
        ["LANCER_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["INTERCEPTOR_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["VIGILANCE_GUNSHIP"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat",
                "Microjump"
            },
            Fighters={
            }
        },
        ["INSTANTACTION_MARKER_EMPIRE"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat",
                "Microjump"
            },
            Fighters={
            }
        }, 
		["INSTANTACTION_MARKER_NEWREP"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat",
                "Microjump"
            },
            Fighters={
            }
        },
        ["GENERIC_INTERDICTOR_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat",
                "InterdictorAI"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["ALLIANCE_ASSAULT_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["ASDONI"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["MASSIAS_INTERDICTOR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat",
                "InterdictorAI"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["GENERIC_IMPERIAL_II_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_PUNISHER_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["AURIETTE_CARRIER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["KRSISS_INTERCEPTOR_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_PUNISHER_SQUADRON"]={
     				["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["SHIELDED_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    }
                },
				["TIE_GT_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=2
                    }
                }
            }
        },
        ["ENFORCER"]={
            Scripts={
                "MultiLayer",
				"FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
			Fighters={
                ["TIE_AGGRESSOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["REPUBLIC_BOARDING_SHUTTLE"]={
            Scripts={
	            "Boarding"
            },
            Fighters={
            }
        },
        ["WARLORD"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["NEBULA"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1,
                        TechLevel = LessThan(4)
                    },
					["HOSTILE"] = {
                        Reserve=2,
                        Initial=1,
                        TechLevel = LessThan(4)
                    },
					["WARLORDS"] = {
                        Reserve=2,
                        Initial=1,
                        TechLevel = LessThan(4)
                    }
                },
                ["DEFENDER_STARFIGHTER_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["K-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1,
                        TechLevel = GreaterOrEqualTo(4)
                    },
					["HOSTILE"] = {
                        Reserve=2,
                        Initial=1,
                        TechLevel = GreaterOrEqualTo(4)
                    },
					["WARLORDS"] = {
                        Reserve=2,
                        Initial=1,
                        TechLevel = GreaterOrEqualTo(4)
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
        ["RAIDER_PENTASTAR"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
		["ADZ"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["GENERIC_STAR_DESTROYER_TWO"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_OPPRESSOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },
                ["TIE_PUNISHER_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
				["TIE_HEAVY_BOMBER_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SHIELDED_INTERCEPTOR_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },
                ["A9_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(4)
                    }
                },
                ["PREYBIRD_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(5)
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=IsOneOf({1,3})
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_AGGRESSOR_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_RAPTOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_AVENGER_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["STARWING_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=3
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["CORONA"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["DEFENDER_STARFIGHTER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
        ["GENERIC_GLADIATOR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_OPPRESSOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["SKIPRAY_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
       ["VIGIL"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["MC80B"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["E-Wing_Squadron"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel = GreaterThan(3)
                    }
                }				
            }
        },
        ["CORELLIAN_CORVETTE"]={
            Scripts={
                "MultiLayer"
            },
            Fighters={
            }
        },
        ["ESCORT_CARRIER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["A9_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=IsOneOf({1,3,4,5})
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },
				["TIE_HEAVY_BOMBER_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["CHISS_STAR_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["KRSISS_INTERCEPTOR_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=4,
                        Initial=4
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SCARSISS_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=2,
                        Initial=2
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=2
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=2
                    }
                }
            }
        },
        ["WORLD_DEVASTATOR"]={
            Scripts={
				"MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_DROID_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=20,
                        Initial=10
                    }
                }
            }
        },
        ["TORPEDO_SPHERE"]={
            Scripts={
				"MultiLayer"
            },
            Fighters={
            }
        },
        ["VINDICATOR_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=0
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=0
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=0
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=0
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=0
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=0
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=0
                    }
                },				
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    }
                },				
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=2
                    }
                }
            }
        },
        ["NURUODO"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["KRSISS_INTERCEPTOR_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },

                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["YEVETHA_ALLEGIANCE"]={
            Scripts={
				"MultiLayer"
            },
            Fighters={
            }
        },
        ["MARAUDER_MISSILE_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["IRDA_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["IMPERIAL_BOARDING_SHUTTLE"]={
            Scripts={
				"MultiLayer",
                "Boarding"
            },
            Fighters={
            }
        },
		["CORELLIAN_GUNBOAT_FERRIER"]={
            Scripts={
                "Boarding"
            },
            Fighters={
            }
        },
        ["KATANA_DREADNAUGHT_REBEL"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["CRUSADER_GUNSHIP"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["GENERIC_SECUTOR"]={
            Scripts={
				"MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_SENTINEL_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["TIE_GT_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=8,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=8,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["HOSTILE"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["WARLORDS"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=8,
                        Initial=2
                    },
					["PENTASTAR"] = {
                        Reserve=8,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["TERADOC"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["HUTTS"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["HOSTILE"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["WARLORDS"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["PENTASTAR"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["PIRATES"] = {
                        Reserve=8,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=8,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["HOSTILE"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["YEVETHA"] = {
                        Reserve=8,
                        Initial=2
                    },
                    ["WARLORDS"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=8,
                        Initial=2
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=16,
                        Initial=4
                    }
                }
            }
        },
        ["BUDIRECH"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["LUCREHULK_CSA"]={
            Scripts={
				"MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["2_WARPOD_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=7,
                        Initial=3
                    }
                },
                ["MANKVIM_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=7,
                        Initial=3
                    }
                },
                ["T-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=7,
                        Initial=3
                    }
                }
            }
        },
		["INVINCIBLE_CRUISER"]={
            Scripts={
				"MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["2_WARPOD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=4,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=4,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=4,
                        Initial=2
                    },
					["REBEL"] = {
                        Reserve=4,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=4,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["IRDA_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=2,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    },
					["YEVETHA"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["PREYBIRD_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=3
                    }
                },
            }
        },
        ["GENERIC_PROCURSATOR"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["CORELLIAN_GUNBOAT"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["VISVIA"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["CLAWCRAFT_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["NOVA_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=2
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["MIYTIL_SQUADRON"]={
                    ["HAPES_CONSORTIUM"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
		["NOVA_CRUISER_INFLUENCE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["MIYTIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
		["BETA_CRUISER"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
		["GENERIC_ALLEGIANCE"]={
            Scripts={ "MultiLayer"
            },
            Fighters={
            }
        },
        ["GENERIC_VICTORY_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(1)
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },			
                ["TIE_DROID_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(3)
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["IRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },	
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["HOWLRUNNER_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                }
            }
        },
        ["EMPRESS_STATION"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=10,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=10,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=10,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=10,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=10,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=10,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=10,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=10,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
				["IRDA_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
				["BTLB_Y-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
				["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
				["SKIPRAY_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=10,
                        Initial=2
                    }
                }
            }
        },
        ["GENERIC_DOMINATOR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat",
                "InterdictorAI"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=2,
						TechLevel=LessOrEqualTo(3)
                    },
					["PENTASTAR"] = {
                        Reserve=2,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=2,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=2,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=2,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=2,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
				["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=2,
						TechLevel=GreaterThan(3)
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=2
                    }
                }
            }
        },
        ["VALIDUSIA"]={
            Scripts={
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=9,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=9,
                        Initial=2
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=9,
                        Initial=2
                    }
                }
            }
        },
        ["MUNIFICENT"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["SKIPRAY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
				["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["NEWREP_XQ"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=10,
                        Initial=3
                    },
					["HOSTILE"] = {
                        Reserve=10,
                        Initial=3
                    },
					["WARLORDS"] = {
                        Reserve=10,
                        Initial=3
                    }
                },
				["TIE_INTERCEPTOR_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=10,
                        Initial=3
                    }
                },
				["IRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=10,
                        Initial=3
                    }
                }
            }
        },
        ["SYNDIC_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                FighterDespawnFactor = 2.5
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=2
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["INTEGO_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_THREE"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=2
                    }
                },
			    ["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["VISCOUNT"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=2
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=2,
                        TechLevel = LessThan(4)
                    }
                },
                ["K-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=2,
                        TechLevel = GreaterOrEqualTo(4)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=2
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_TWO_STRATEGIC"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=2
                    }
                },
			    ["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_TWO"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=2
                    }
                },
			    ["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["AMM_NOVA_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["MIYTIL_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["MIYTIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["GENERIC_VICTORY_DESTROYER_TWO"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
               ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(1)
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },			
                ["TIE_DROID_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(3)
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["IRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },		
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["HOWLRUNNER_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                }
            }
        },
        ["REBEL_GOLAN_THREE_STRATEGIC"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = LessOrEqualTo(2)
                    }
                }
            }
        },
        ["GENERIC_PROVIDENCE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_SENTINEL_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=3,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=3,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
				["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=4
                    }
                }
            }
        },
        ["MC40A"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["REBEL_GOLAN_TWO_STRATEGIC"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = LessOrEqualTo(2)
                    }
                }
            }
        },
        ["GENERIC_VENATOR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_GT_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["A9_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=1,
						TechLevel = GreaterThan(3)
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=4,
                        Initial=2
                    },
                    ["HOSTILE"] = {
                        Reserve=4,
                        Initial=2
                    },
                    ["WARLORDS"] = {
                        Reserve=4,
                        Initial=2
                    },
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    },
					["YEVETHA"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=4,
                        Initial=2
                    },
                    ["HOSTILE"] = {
                        Reserve=4,
                        Initial=2
                    },
                    ["WARLORDS"] = {
                        Reserve=4,
                        Initial=2
                    },
					["EMPIRE"] = {
                        Reserve=2,
                        Initial=1,
						TechLevel = LessOrEqualTo(3)
                    }
                },
				["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=3
                    }
                }
            }
        },
        ["REBEL_GOLAN_ONE"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = LessOrEqualTo(2)
                    }
                }
            }
        },
        ["KELDABE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["AGGRESSOR_ASSAULT_FIGHTER_SQUADRON"]={
					["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },					
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["STARVIPER_SQUADRON"]={
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_INTERCEPTOR_SQUADRON"]={
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=2
                    }
                }
            }
        },
		["KELDABE_INFLUENCE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["AGGRESSOR_ASSAULT_FIGHTER_SQUADRON"]={
					["DEFAULT"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["STARVIPER_SQUADRON"]={
					["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["CRIMSON_VICTORY"]={
            Scripts={
				"MultiLayer",
                "FighterSpawn"
            },
            Fighters={
               ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(1)
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },		
                ["TIE_DROID_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(3)
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["IRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },			
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["HOWLRUNNER_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                }
            }
        },
        ["QUASER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["Y-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["ENDURANCE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=4,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=4,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=2,
                        TechLevel = LessThan(4)
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=2,
                        TechLevel = LessThan(4)
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=2,
                        TechLevel = LessThan(4)
                    }
                },
                ["K-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=2,
                        TechLevel = GreaterOrEqualTo(4)
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=2,
                        TechLevel = GreaterOrEqualTo(4)
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=2,
                        TechLevel = GreaterOrEqualTo(4)
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=7,
                        Initial=4
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    }
                }
            }
        },
        ["STAR_HOME"]={
            Scripts={
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["MIYTIL_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=3
                    }
                },
                ["MIYTIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["AMM_BATTLEDRAGON"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["MIYTIL_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["MIYTIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_THREE_STRATEGIC"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=2
                    }
                },
			    ["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["CHAF_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    }
                },
                ["FURION_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=2
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["SCARSISS_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    }
                }
            }
        },
        ["GENERIC_STAR_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_OPPRESSOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },
				["TIE_PUNISHER_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
				["TIE_HEAVY_BOMBER_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SHIELDED_INTERCEPTOR_SQUADRON"]={
                    ["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=EqualTo(2)
                    }
                },
                ["A9_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(4)
                    }
                },
                ["PREYBIRD_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=EqualTo(5)
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=IsOneOf({1,3})
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_AGGRESSOR_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_RAPTOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_AVENGER_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["STARWING_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=3
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["YEVETHA_DREADNAUGHT"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["ARMADIA"]={
            Scripts={
                "MultiLayer",
				"FighterSpawn"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
		["ARMADIA_INFLUENCE"]={
            Scripts={
                "MultiLayer",
				"FighterSpawn"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
		["C_TYPE_THRUSTSHIP"]={
            Scripts={
                "MultiLayer",
				"FighterSpawn"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=3
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=2
                    }
                }
            }
        },
		["C_TYPE_INFLUENCE"]={
            Scripts={
                "MultiLayer",
				"FighterSpawn"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=3
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=2
                    }
                }
            }
        },
        ["ARQUITENS"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["SOVEREIGN"]={
            Scripts={
                "FighterSpawn",
				"InterdictorAI"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_DROID_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=24,
                        Initial=6
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=4,
                        Initial=4
                    }
                }
            }
        },
        ["NEBULON_B-2_ZSINJ"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["BATTLEDRAGON"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["MIYTIL_BOMBER_SQUADRON"]={
                    ["HAPES_CONSORTIUM"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["MIYTIL_SQUADRON"]={
                    ["HAPES_CONSORTIUM"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
		["BATTLEDRAGON_INFLUENCE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["MIYTIL_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["MIYTIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["KATANA_DREADNAUGHT_EMPIRE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["CALAMARI_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=3
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["BAC"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SCIMMY_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["HOME_ONE_TYPE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=3,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=4
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
        ["KARIEK_SHIELDSHIP"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["CLAWCRAFT_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    }
                },
                ["SCARSISS_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                }
            }
        },
        ["MC90"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=3
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=2
                    }
                }
            }
        },
        ["NEBULON_B_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["COMBAT_ESCORT_CARRIER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_HUNTER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["SACHEEN"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["DEFENDER_STARFIGHTER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["PELTAST"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["KRSISS_INTERCEPTOR_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["CR90_ZSINJ"]={
            Scripts={
                "MultiLayer"
            },
            Fighters={
            }
        },
        ["QUASAR_ZSINJ"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_RAPTOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["PREYBIRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["2_WARPOD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["NEUTRON_STAR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_AVENGER_SQUADRON"]={
                    ["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["HOWLRUNNER_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_GT_SQUADRON"]={
                    ["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
				["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["BTLB_Y-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
				["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=2
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["REBEL_GOLAN_THREE"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = LessOrEqualTo(2)
                    }
                }
            }
        },
        ["ALARIA"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["FURION_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["KRSISS_INTERCEPTOR_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },				
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=3
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["DREADNAUGHT_EMPIRE"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    },
					["UNDERWORLD"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                }
            }
        },
        ["DREADNAUGHT_REBEL"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1
                    },
                    ["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                    ["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                },
                    ["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
            }
        },
        ["GENERIC_TECTOR"]={
            Scripts={
                "MultiLayer"
            },
            Fighters={
            }
        },
        ["MAJESTIC"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel = LessThan(4)
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel = LessThan(4)
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel = LessThan(4)
                    }
                },
                ["K-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel = GreaterOrEqualTo(4)
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel = GreaterOrEqualTo(4)
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel = GreaterOrEqualTo(4)
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=3
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=2
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_ONE"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=2
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=2
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=2
                    }
                },
			    ["T-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=0,
                        Initial=2
                    }
                }
            }
        },
        ["CARRACK_CRUISER"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
		["VICTORY_II_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["NEBULON_B_ZSINJ"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_RAPTOR_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_FIGHTER_SQUADRON"]={
                    ["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
                },
                ["MANKVIM_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["V38_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["GENERIC_EXECUTOR"]={
            Scripts={
                "FighterSpawn"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=9,
                        Initial=3
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=9,
                        Initial=3
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=12,
                        Initial=3
                    }
                }
            }
        },
        ["MTC_SENSOR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_DROID_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
				["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=3
                    }
                }
            }
        },
		["MTC_CSA"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters={
                ["TIE_DROID_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
				["IRDA_SQUADRON"]={
					["CORPORATE_SECTOR"] = {
                        Reserve=3,
                        Initial=2
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=2
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["SKIPRAY_SQUADRON"]={
					["CORPORATE_SECTOR"] = {
                        Reserve=3,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=3,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
				["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=3
                    }
                }
            }
        },
        ["ISD_1_NR"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
        ["DAUNTLESS"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },	
                ["IRD_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },				
				["PREYBIRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }					
                }
            }
        },
		["BULWARK_I"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
            },
            Fighters={
				["MANKVIM_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=3,
                        Initial=2
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["BTLB_Y-WING_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                }
            }
        },
		["BULWARK_III"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
            },
            Fighters={
				["IRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
				["PREYBIRD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=2,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=6,
                        Initial=4
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=4,
                        Initial=2
                    }
                },
				["2_WARPOD_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["SKIPRAY_SQUADRON"]={
                    ["CORPORATE_SECTOR"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
				["Y-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=2,
                        Initial=2
                    }
                }
            }
        },
        ["IPV1_TERADOC"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        },
        ["STRIKE_CRUISER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters={
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1,
						TechLevel=LessOrEqualTo(3)
                    },
					["PENTASTAR"] = {
                        Reserve=0,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=0,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=0,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=0,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["TIE_FIGHTER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PENTASTAR"] = {
                        Reserve=1,
                        Initial=1
                    },
					["PIRATES"] = {
                        Reserve=1,
                        Initial=1
                    },
					["TERADOC"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HUTTS"] = {
                        Reserve=1,
                        Initial=1
                    },
					["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
				 ["SHIELDED_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=0,
                        Initial=1,
						TechLevel=GreaterThan(3)
                    }
                },
				["REBEL_X-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=0,
                        Initial=1
                    }
                },
                ["SHIELDED_TIE_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=1,
                        Initial=2
                    }
                }
            }
        },
        ["GENERIC_PRAETOR"]={
            Scripts={
				"MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters={
                ["TIE_FIGHTER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=3,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=1
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=2,
                        Initial=1
                    }
                }
            }
        },
        ["REBEL_GOLAN_TWO"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["E-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["REBEL_X-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=0,
                        Initial=2,
                        TechLevel = LessOrEqualTo(2)
                    }
                }
            }
        },
        ["RANCOR_BASE"]={
            Scripts={
                "FighterSpawn"
            },
            Fighters={
                ["TIE_RAPTOR_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=4
                    }
                },
                ["TIE_TERROR_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=3,
                        Initial=1
                    }
                }				
            }
        },
        ["BLACK_15"]={
            Scripts={
                "FighterSpawn"
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=4
                    }
                }
            }
        },
        ["SLAYN_KORPIL"]={
            Scripts={
                "TurnStation",
                "FighterSpawn"
            },
            Fighters={
                ["B-WING_SQUADRON"]={
                    ["DEFAULT"] = {
                        Reserve=10,
                        Initial=6
                    }
                }
            }
        },
        ["YEVETHA_BOARDING_SHUTTLE"]={
            Scripts={
				"MultiLayer",
                "Boarding"
            },
            Fighters={
            }
        },
        ["PHALANX_DESTROYER"]={
            Scripts={
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                FighterDespawnFactor = 2.5
            },
            Fighters={
                ["TRIFOIL_SQUADRON"]={
                    ["YEVETHA"] = {
                        Reserve=2,
                        Initial=2
                    }
                },
                ["B-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SCARSISS_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=GreaterThan(3)
                    }
                },
                ["TIE_INTERCEPTOR_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["A-WING_SQUADRON"]={
                    ["REBEL"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["SYCA_BOMBER_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1
                    },
                    ["WARLORDS"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["TIE_BOMBER_SQUADRON"]={
                    ["EMPIRE"] = {
                        Reserve=1,
                        Initial=1
                    }
                },
                ["CLAWCRAFT_SQUADRON"]={
                    ["UNDERWORLD"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve=1,
                        Initial=1,
                        TechLevel=LessOrEqualTo(3)
                    }
                }
            }
        },
        ["NEBULON_B-2_FRIGATE"]={
            Scripts={
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters={
            }
        }

    }
}
return GameObjectLibrary
