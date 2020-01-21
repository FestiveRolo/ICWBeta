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
    Interdictors = {},
    Numbers = {
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
    Units = {
        ["CC7700"] = {
            Scripts = {
                "MultiLayer",
                "InterdictorAI"
            },
            Fighters = {}
        },
        ["GEONOSIAN_CRUISER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["C9979_CARRIER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 2
                    }
                },
                ["HYENA_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP_I"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 6,
                        Initial = 3
                    },
                    ["HOSTILE"] = {
                        Reserve = 6,
                        Initial = 3
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 6,
                        Initial = 3
                    }
                },				
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }					
                }
            }
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP_II"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },		
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP_LEVELER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    }
                },
                ["ARC_170_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }					
                }
            }
        },
        ["REPUBLIC_BOARDING_SHUTTLE"] = {
            Scripts = {
                "MultiLayer",
                "Boarding"
            },
            Fighters = {}
        },
        ["GENERIC_GLADIATOR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {}
        },
        ["RECUSANT"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
		["RECUSANT_DREADNOUGHT"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
        ["DIAMOND_FRIGATE"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
        ["HARDCELL"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["NEUTRON_STAR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },		
        ["GENERIC_SECUTOR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
				["V-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 8,
                        Initial = 3,
						TechLevel = GreaterThan(3)
                    },
                },
                ["TORRENT_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 8,
                        Initial = 3,
						TechLevel = LessOrEqualTo(3)
                    }
                },				
				["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 8,
                        Initial = 3
                    },
                },				
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 8,
                        Initial = 3
                    }
                }
            }
        },
        ["INVINCIBLE_CRUISER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 8,
                        Initial = 4,
						TechLevel = LessOrEqualTo(3)						
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 8,
                        Initial = 4,
						TechLevel = GreaterThan(3)						
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }				
            }
        },
        ["GENERIC_VICTORY_DESTROYER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["V-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = GreaterThan(3)
                    }
                },			
                ["TORRENT_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 1
                    }
                }				
            }
        },
        ["MUNIFICENT"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["SKIPRAY_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 0
                    }
                }
            }
        },
        ["GENERIC_VICTORY_DESTROYER_TWO"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["V-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = GreaterThan(3)
                    }
                },			
                ["TORRENT_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_PROVIDENCE"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 3,
                        Initial = 1
                    }					
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = GreaterThan(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(1)						
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)						
                    },	
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2				
                    }					
                },				
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 2
                    }					
                },				
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    }					
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    }
                }
            }
        },
		["PROVIDENCE_DREADNOUGHT"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["PIRATES"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["PENTASTAR"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["TERADOC"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["HUTTS"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["HOSTILE"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["WARLORDS"] = {
                        Reserve = 6,
                        Initial = 4
                    }					
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 6,
                        Initial = 4,
						TechLevel = GreaterThan(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 6,
                        Initial = 4,
						TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 6,
                        Initial = 4,
						TechLevel = GreaterThan(3)
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 6,
                        Initial = 4,
                        TechLevel = LessOrEqualTo(1)						
                    },
                    ["PIRATES"] = {
                        Reserve = 6,
                        Initial = 4,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["HUTTS"] = {
                        Reserve = 6,
                        Initial = 4,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["HOSTILE"] = {
                        Reserve = 6,
                        Initial = 4						
                    }					
                },					
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["TERADOC"] = {
                        Reserve = 6,
                        Initial = 4
                    }					
                },				
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["PIRATES"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["PENTASTAR"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["TERADOC"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["HUTTS"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["HOSTILE"] = {
                        Reserve = 6,
                        Initial = 4
                    },
                    ["WARLORDS"] = {
                        Reserve = 6,
                        Initial = 4
                    }					
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 6,
                        Initial = 4
                    }
                }				
            }
        },
        ["CAPTOR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2
                    },	
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    }					
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = GreaterThan(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = GreaterThan(3)
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = LessOrEqualTo(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    }					
                },								
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    }					
                },				
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    }					
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }				
            }
        },
        ["AUXILIA"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
        ["GENERIC_LUCREHULK"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["PIRATES"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["PENTASTAR"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["TERADOC"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["HUTTS"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["HOSTILE"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["WARLORDS"] = {
                        Reserve = 45,
                        Initial = 5
                    }					
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = GreaterThan(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = LessOrEqualTo(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 8,
                        Initial = 2
                    }					
                },	
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 8,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 8,
                        Initial = 2
                    }					
                },				
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["PIRATES"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["PENTASTAR"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["TERADOC"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["HUTTS"] = {
                        Reserve = 12,
                        Initial = 3
                    },	
                    ["HOSTILE"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["WARLORDS"] = {
                        Reserve = 12,
                        Initial = 3
                    }					
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 8,
                        Initial = 2
                    }
                }				
            }
        },
        ["CARGO_LUCREHULK"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["PIRATES"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["PENTASTAR"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["TERADOC"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["HUTTS"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["WARLORDS"] = {
                        Reserve = 45,
                        Initial = 5
                    },
                    ["HOSTILE"] = {
                        Reserve = 45,
                        Initial = 5
                    }					
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = GreaterThan(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = LessOrEqualTo(1)
                    },
                    ["PIRATES"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 8,
                        Initial = 2,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 8,
                        Initial = 2
                    }			
                },
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 8,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 8,
                        Initial = 2
                    }					
                },				
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["PIRATES"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["PENTASTAR"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["TERADOC"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                    ["HUTTS"] = {
                        Reserve = 12,
                        Initial = 3
                    },		
                   ["HOSTILE"] = {
                        Reserve = 12,
                        Initial = 3
                    },
                   ["WARLORDS"] = {
                        Reserve = 12,
                        Initial = 3
                    }					
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 8,
                        Initial = 2
                    }
                }				
            }
        },		
        ["SUBJUGATOR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    },	
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    }					
                },
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    }					
                }
            }
        },
        ["GENERIC_VENATOR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 10,
                        Initial = 3,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 10,
                        Initial = 3
                    },
                    ["WARLORDS"] = {
                        Reserve = 10,
                        Initial = 3
                    }
                },
				["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 10,
                        Initial = 3,
						TechLevel = GreaterThan(3)
                    }
                },
                ["ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_STAR_DESTROYER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 7,
                        Initial = 2,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 7,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 7,
                        Initial = 2
                    }
                },
				["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 7,
                        Initial = 2,
						TechLevel = GreaterThan(3)
                    }
                },
                ["ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["EARLY_SKIPRAY_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }		
            }
        },
        ["ARQUITENS"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
        ["GENERIC_TECTOR"] = {
            Scripts = {
                "MultiLayer"
            },
            Fighters = {}
        },
        ["CARRACK_CRUISER"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
        ["CARRACK_CRUISER_LASERS"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
		["DREADNAUGHT"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },	
		["DREADNAUGHT_LASERS"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },	
        ["BANKING_CLAN_INTERCEPTOR_FRIGATE"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },
       ["BANKING_CLAN_DREADNAUGHT_LASERS"] = {
            Scripts = {
                "MultiLayer",
                "SingleUnitRetreat"
            },
            Fighters = {}
        },	
       ["TECHNO_UNION_MARAUDER_MISSILE_CRUISER"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Flags = {
                HANGAR = true
            },			
            Fighters = {
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 1
                    },	
                    ["PENTASTAR"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 1
                    }					
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 0,
                        Initial = 1
                    },	
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1
                    }					
                }				
            }
        },			
        ["BULWARK_I"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }					
                },
                ["MANKVIM_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }					
                },
                ["HYENA_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1
                    }					
                }
            }
        },
        ["BULWARK_I_Subfaction"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }					
                },
                ["MANKVIM_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }					
                },
                ["HYENA_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1
                    }					
                }
            }
        },		
        ["BULWARK_II"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }					
                },
                ["MANKVIM_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 2,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    }					
                },
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 2
                    }					
                }
            }
        },
        ["BULWARK_II_Subfaction"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }					
                },
                ["MANKVIM_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 2,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    }					
                },
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 2
                    }					
                }
            }
        },		
        ["GENERIC_PRAETOR"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",
                "SingleUnitRetreat"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    }					
                },		
                ["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = GreaterThan(3)
                    }
                },				
                ["ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)						
                    }					
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
						TechLevel = GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)						
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)						
                    }
                },				
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
		["PELTA_ASSAULT"] = {
            Scripts = {
                "MultiLayer"
            },
            Fighters = {}
        },
		["PELTA_SUPPORT"] = {
            Scripts = {
                "MultiLayer",
                "InterdictorAI"
            },
            Fighters = {}
        },
		["SUPPLY_SHIP"] = {
            Scripts = {
                "MultiLayer",
                "FighterSpawn",				
                "InterdictorAI"
            },
            Fighters = {
                ["VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["REBEL_GOLAN_TWO"] = {
            Scripts = {
                "TurnStation",
                "FighterSpawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 2
                    }
                }
            }
        },
        ["REBEL_GOLAN_TWO_STRATEGIC"] = {
            Scripts = {
                "TurnStation",
                "FighterSpawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 2
                    }
                }
            }
        },
        ["REBEL_GOLAN_ONE"] = {
            Scripts = {
                "TurnStation",
                "FighterSpawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 2
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_TWO_STRATEGIC"] = {
            Scripts = {
                "TurnStation",
                "FighterSpawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 0,
                        Initial = 2
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 2
                    }					
                }				
            }
        },
        ["EMPIRE_GOLAN_TWO"] = {
            Scripts = {
                "TurnStation",
                "FighterSpawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 2,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 0,
                        Initial = 2
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 2
                    }					
                }				
            }
        },
        ["EMPIRE_GOLAN_ONE"] = {
            Scripts = {
                "TurnStation",
                "FighterSpawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 0,
                        Initial = 2
                    }					
                },
                ["SCARAB_SQUADRON"] = {
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 2
                    }					
                }				
            }
        }		
    }
}
return GameObjectLibrary
