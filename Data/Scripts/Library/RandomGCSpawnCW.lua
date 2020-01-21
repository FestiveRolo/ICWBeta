-- Spawns units at all neutral or hostile planets in a GC
require("RandomGCSpawn")

function Spawn_At_All_Planets_CW()

	local hostile = Find_Player("Hostile")
	local neutral = Find_Player("Neutral")
	local planet = nil
	local planet_settings = {}
	
	-- Possible spawning units
	-- Arranged as Unit_Table = {{Find_Object_Type("Unit_Name), weight}}
	Unit_Table = {{--Republic GAR focus
					{Find_Object_Type("Generic_Venator"), 3, "Space"}
					,{Find_Object_Type("Generic_Victory_Destroyer"), 3, "Space"}
					,{Find_Object_Type("Dreadnaught_Lasers"), 4, "Space"}
					,{Find_Object_Type("Carrack_Cruiser_Lasers"), 5, "Space"}
					,{Find_Object_Type("Generic_Acclamator_Assault_Ship_I"), 4, "Space"}
					,{Find_Object_Type("Generic_Acclamator_Assault_Ship_Leveler"), 4, "Space"}
					,{Find_Object_Type("Generic_Acclamator_Assault_Ship_II"), 4, "Space"}
					,{Find_Object_Type("Arquitens"), 3, "Space"}
					,{Find_Object_Type("Pelta_Assault"), 3, "Space"}
					,{Find_Object_Type("Pelta_Support"), 3, "Space"}
					,{Find_Object_Type("LAC"), 5, "Space"}
					,{Find_Object_Type("Clonetrooper_Phase_Two_Team"), 5, "Land"}
					,{Find_Object_Type("AT_RT_Squad"), 2, "Land"}
					,{Find_Object_Type("BARC_Squad"), 4, "Land"}
					,{Find_Object_Type("LAAT_Group"), 2, "Land"}
					,{Find_Object_Type("Republic_Heavy_Assault_Company"), 1, "Land"}
				}
				
				,{--CIS TF focus
					{Find_Object_Type("Generic_Lucrehulk"), 1, "Space"}
					,{Find_Object_Type("Captor"), 4, "Space"}
					,{Find_Object_Type("Auxilia"), 4, "Space"}
					,{Find_Object_Type("C9979_Carrier"), 5, "Space"}
					,{Find_Object_Type("Hardcell"), 5, "Space"}
					,{Find_Object_Type("Munificent"), 4, "Space"}
					,{Find_Object_Type("Cargo_Lucrehulk"), 1, "Space"}
					,{Find_Object_Type("B1_Droid_Squad"), 3, "Land"}
					,{Find_Object_Type("Destroyer_Droid_Company"), 2, "Land"}
					,{Find_Object_Type("STAP_Squad"), 2, "Land"}
					,{Find_Object_Type("AAT_Company"), 1, "Land"}
					,{Find_Object_Type("MTT_Company"), 1, "Land"}
					,{Find_Object_Type("J1_Artillery_Corp"), 2, "Land"}
					}

				,{--Republic PDF focus
					{Find_Object_Type("Invincible_Cruiser"), 3, "Space"}
					,{Find_Object_Type("Katana_Dreadnaught"), 4, "Space"}
					,{Find_Object_Type("Dreadnaught_Lasers"), 4, "Space"}
					,{Find_Object_Type("Neutron_Star"), 4, "Space"}
					,{Find_Object_Type("Carrack_Cruiser_Lasers"), 5, "Space"}
					,{Find_Object_Type("Generic_Acclamator_Assault_Ship_I"), 4, "Space"}
					,{Find_Object_Type("Generic_Acclamator_Assault_Ship_Leveler"), 4, "Space"}
					,{Find_Object_Type("Generic_Praetor"), 1, "Space"}
					,{Find_Object_Type("Arquitens"), 3, "Space"}
					,{Find_Object_Type("Corellian_Corvette"), 5, "Space"}
					,{Find_Object_Type("Corellian_Gunboat"), 5, "Space"}
					,{Find_Object_Type("PDF_Soldier_Team"), 5, "Land"}
					,{Find_Object_Type("Imperial_ATPT_Squad"), 2, "Land"}
					,{Find_Object_Type("Speeder_Bike_Squad"), 4, "Land"}
					,{Find_Object_Type("Imperial_IFTX_Group"), 2, "Land"}
					,{Find_Object_Type("A5_Juggernaut_Company"), 1, "Land"}
					}
					
				,{--CIS not TF focus
					{Find_Object_Type("Generic_Providence"), 3, "Space"}
					,{Find_Object_Type("Bulwark_I"), 3, "Space"}
					,{Find_Object_Type("Bulwark_II"), 1, "Space"}
					,{Find_Object_Type("Recusant"), 4, "Space"}
					,{Find_Object_Type("Recusant_Dreadnought"), 3, "Space"}
					,{Find_Object_Type("Munificent"), 4, "Space"}
					,{Find_Object_Type("Providence_Dreadnought"), 1, "Space"}
					,{Find_Object_Type("Diamond_Frigate"), 5, "Space"}
					,{Find_Object_Type("Geonosian_Cruiser"), 5, "Space"}
					,{Find_Object_Type("Gozanti_Cruiser_Squadron"), 5, "Space"}
					,{Find_Object_Type("Supply_Ship"), 4, "Space"}
					,{Find_Object_Type("B2_Droid_Squad"), 3, "Land"}
					,{Find_Object_Type("Crab_Droid_Squad"), 2, "Land"}
					,{Find_Object_Type("OG9_Company"), 1, "Land"}
					,{Find_Object_Type("Magna_Company"), 1, "Land"}
					,{Find_Object_Type("Persuader_Company"), 1, "Land"}
					,{Find_Object_Type("Hailfire_Company"), 2, "Land"}
					}
	}
	
	Groundbase_Table = {{
					Find_Object_Type("E_Ground_Barracks"),
					Find_Object_Type("E_Ground_Light_Vehicle_Factory"),					
					Find_Object_Type("E_Ground_Heavy_Vehicle_Factory"),					
				}
				
				,{
					Find_Object_Type("R_Ground_Barracks"),
					Find_Object_Type("R_Ground_Light_Vehicle_Factory"),
					Find_Object_Type("R_Ground_Heavy_Vehicle_Factory"),
					}

				,{
					Find_Object_Type("E_Ground_Barracks"),
					Find_Object_Type("E_Ground_Light_Vehicle_Factory"),
					Find_Object_Type("E_Ground_Heavy_Vehicle_Factory"),
					}
					
				,{
					Find_Object_Type("R_Ground_Barracks"),
					Find_Object_Type("R_Ground_Light_Vehicle_Factory"),
					Find_Object_Type("R_Ground_Heavy_Vehicle_Factory"),
					}
					
				}
						
	
	DebugMessage("%s -- Initializing spawning", tostring(Script))
	if hostile.Get_Difficulty() == "Easy" then
		Difficulty_Modifier = 0.75
	elseif hostile.Get_Difficulty() == "Hard" then
		Difficulty_Modifier = 1.5
	else
		Difficulty_Modifier = 1.0
	end
		
	-- Loop through	all planets once, spawning units
	for _, planet in pairs(FindPlanet.Get_All_Planets()) do
		-- Hostile unit spawns
		if planet.Get_Owner() == (neutral or hostile) then	
		
			-- Scaled combat power based on planet value, reduced by if connected to a player, then increased or decreased by difficulty level
			scaled_combat_power = 20000 * EvaluatePerception("GenericPlanetValue", hostile, planet) * (1.5 - EvaluatePerception("Is_Connected_To_Player", hostile, planet)) * Difficulty_Modifier
			-- pick a random unit selection table
			random_table_index = GameRandom.Free_Random(1, table.getn(Unit_Table))
			
			DebugMessage("%s -- Attempting to spawn units at %s, from table number %s, combat power %s, difficulty modifier %s", tostring(Script), tostring(planet), tostring(random_table_index), tostring(scaled_combat_power), tostring(Difficulty_Modifier))
			-- Spawns random units at the planet for the given faction and combat power per planet
			Spawn_Random_Units(Unit_Table[random_table_index], planet, hostile, scaled_combat_power, true)
		end
	end
end