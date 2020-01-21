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
--*   @Author:              Corey
--*   @Date:                2017-12-18T14:01:09+01:00
--*   @Project:             Imperial Civil War
--*   @Filename:            GCWarlordsCampaign.lua
--*   @Last modified by:
--*   @Last modified time:  2018-03-13T22:28:32-04:00
--*   @License:             This source code may only be used with explicit permission from the developers
--*   @Copyright:           © TR: Imperial Civil War Development Team
--******************************************************************************

require("PGStoryMode")
require("PGSpawnUnits")
require("trlib-util/ChangeOwnerUtilities")
StoryUtil = require("trlib-util/StoryUtil")

function Definitions()
    DebugMessage("%s -- In Definitions", tostring(Script))

    StoryModeEvents = {
        Government_Start = Find_Faction,
        Ratchet_Up = Support_AI,
        Buy_Support_IGBC = Support_IGBC,
        Buy_Support_Techno = Support_Techno,
        Buy_Support_TradeFed = Support_TradeFed,
        Buy_Support_Commerce = Support_Commerce,
        Exit_Function = Safeguard
    }

   p_cis = Find_Player("Rebel")

end

function Find_Faction(message)
    if message == OnEnter then

        local p_republic = Find_Player("Empire")

        if p_republic.Is_Human() then
            Story_Event("CIS_IS_AI")
        end

        

    end
end

function Support_AI(message)
    if message == OnEnter then


        if p_cis.Get_Difficulty() == "Easy" then
            increaseAmount = 25
        elseif p_cis.Get_Difficulty() == "Hard" then
            increaseAmount = 40
        else
            increaseAmount = 30
        end

        currentSupport = GlobalValue.Get("IGBCApprovalRating")
        GlobalValue.Set("IGBCApprovalRating", currentSupport + increaseAmount)

        currentSupport = GlobalValue.Get("IGBCApprovalRating")
        if currentSupport > 99 then
            Absorb_IGBC()
        end  
        
        currentSupport = GlobalValue.Get("TechnoApprovalRating")
        GlobalValue.Set("TechnoApprovalRating", currentSupport + increaseAmount)

        currentSupport = GlobalValue.Get("TechnoApprovalRating")
        if currentSupport > 99 then
            Absorb_Techno()
        end 
        
        currentSupport = GlobalValue.Get("CommerceApprovalRating")
        GlobalValue.Set("CommerceApprovalRating", currentSupport + increaseAmount)

        currentSupport = GlobalValue.Get("CommerceApprovalRating")
        if currentSupport > 99 then
            Absorb_Commerce()
        end    

        currentSupport = GlobalValue.Get("TradeFedApprovalRating")
        GlobalValue.Set("TradeFedApprovalRating", currentSupport + increaseAmount)

        currentSupport = GlobalValue.Get("TradeFedApprovalRating")
        if currentSupport > 99 then
            Absorb_TradeFed()
        end    

    end
end

function Safeguard(message)
    if message == OnEnter then

    end
end

--Intergalactic Banking Clan Functions
function Support_IGBC(message)
    if message == OnEnter then
        currentSupport = GlobalValue.Get("IGBCApprovalRating")
        GlobalValue.Set("IGBCApprovalRating", currentSupport + 5)

        currentSupport = GlobalValue.Get("IGBCApprovalRating")
        if currentSupport > 99 then
            Absorb_IGBC()
        end    

    end
end

function Absorb_IGBC()

    Story_Event("IGBC_ABSORBED")

    -- local allUnitsPerOwner = {}
    -- local owner = Find_Player("Pentastar")
    -- allUnitsPerOwner[owner] = Find_All_Objects_Of_Type(owner)
    -- local allUnitsOfCurrentOwner = allUnitsPerOwner[owner]
    -- for i,unit in pairs(allUnitsOfCurrentOwner) do
    --     unit.Despawn()
    -- end    

    

    start_planet = StoryUtil.FindFriendlyPlanet(p_cis)
    if start_planet then
        spawn_list = { "Tonith_Corpulentus", "Canteval_Munificent" }
        SpawnList(spawn_list, start_planet, p_cis, true, false)
    end
    if p_cis.Is_Human() then
        Story_Event("IGBC_JOINS_SPEECH")
    end

    Sleep(10)

    for _, planet in pairs(FindPlanet.Get_All_Planets()) do
        if planet.Get_Owner() == Find_Player("Pentastar") then      
	    	ChangePlanetOwnerAndReplace(planet, p_cis)
		end
    end
end

--Techno Union Functions
function Support_Techno(message)
    if message == OnEnter then
        currentSupport = GlobalValue.Get("TechnoApprovalRating")
        GlobalValue.Set("TechnoApprovalRating", currentSupport + 5)

        currentSupport = GlobalValue.Get("TechnoApprovalRating")
        if currentSupport > 99 then
            Absorb_Techno()
        end    

    end
end

function Absorb_Techno()   

    Story_Event("TECHNO_ABSORBED")


    -- local allUnitsPerOwner = {}
    -- local owner = Find_Player("Hutts")
    -- allUnitsPerOwner[owner] = Find_All_Objects_Of_Type(owner)
    -- local allUnitsOfCurrentOwner = allUnitsPerOwner[owner]
    -- for i,unit in pairs(allUnitsOfCurrentOwner) do
    --     unit.Despawn()
    -- end   
   
    
    if p_cis.Is_Human() then
        Story_Event("TECHNO_JOINS_SPEECH")
    end

    Sleep(10)

    for _, planet in pairs(FindPlanet.Get_All_Planets()) do
        if planet.Get_Owner() == Find_Player("Hutts") then
    	    	ChangePlanetOwnerAndReplace(planet, p_cis)
		end
    end
end

--Commerce Guild Functions
function Support_Commerce(message)
    if message == OnEnter then
        currentSupport = GlobalValue.Get("CommerceApprovalRating")
        GlobalValue.Set("CommerceApprovalRating", currentSupport + 5)

        currentSupport = GlobalValue.Get("CommerceApprovalRating")
        if currentSupport > 99 then
            Absorb_Commerce()
        end    

    end
end

function Absorb_Commerce() 
    
    Story_Event("COMMERCE_ABSORBED")
    -- local allUnitsPerOwner = {}
    -- local owner = Find_Player("Teradoc")
    -- allUnitsPerOwner[owner] = Find_All_Objects_Of_Type(owner)
    -- local allUnitsOfCurrentOwner = allUnitsPerOwner[owner]
    -- for i,unit in pairs(allUnitsOfCurrentOwner) do
    --     unit.Despawn()
    -- end  

    
    if p_cis.Is_Human() then
        Story_Event("COMMERCE_JOINS_SPEECH")
    end

    Sleep(10)
        
    for _, planet in pairs(FindPlanet.Get_All_Planets()) do
        if planet.Get_Owner() == Find_Player("Teradoc") then
            ChangePlanetOwnerAndReplace(planet, p_cis)
		end
    end
end

--Trade Federation Guild Functions
function Support_TradeFed(message)
    if message == OnEnter then
        currentSupport = GlobalValue.Get("TradeFedApprovalRating")
        GlobalValue.Set("TradeFedApprovalRating", currentSupport + 5)

        currentSupport = GlobalValue.Get("TradeFedApprovalRating")
        if currentSupport > 99 then
            Absorb_TradeFed()
        end    

    end
end

function Absorb_TradeFed()   
    Story_Event("TRADEFED_ABSORBED")


    -- local allUnitsPerOwner = {}
    -- local owner = Find_Player("Pirates")
    -- allUnitsPerOwner[owner] = Find_All_Objects_Of_Type(owner)
    -- local allUnitsOfCurrentOwner = allUnitsPerOwner[owner]
    -- for i,unit in pairs(allUnitsOfCurrentOwner) do
    --     unit.Despawn()
    -- end   

    start_planet = StoryUtil.FindFriendlyPlanet(p_cis)
    if start_planet then
        spawn_list = { "Durd_Team", "Tuuk_Procurer" }
        SpawnList(spawn_list, start_planet, p_cis, true, false)
    end
    if p_cis.Is_Human() then
        Story_Event("TRADEFED_JOINS_SPEECH")
    end

    Sleep(10)
    for _, planet in pairs(FindPlanet.Get_All_Planets()) do
        if planet.Get_Owner() == Find_Player("Pirates") then
            ChangePlanetOwnerAndReplace(planet, p_cis)
        end
    end
end
