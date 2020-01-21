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
--*   @Author:              [TR]Pox
--*   @Date:                2017-11-24T12:43:51+01:00
--*   @Project:             Imperial Civil War
--*   @Filename:            InvadingFleet.lua
--*   @Last modified by:    svenmarcus
--*   @Last modified time:  2018-03-30T03:07:16+02:00
--*   @License:             This source code may only be used with explicit permission from the developers
--*   @Copyright:           © TR: Imperial Civil War Development Team
--******************************************************************************

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")
require("PGMoveUnits")
require("trlib-util/StoryUtil")

function Definitions()
    DebugMessage("%s -- In Definitions", tostring(Script))

    StoryModeEvents = {
        Battle_Start = State_Init,
        Minute_Elapsed = Remove_Influence
    }
end

function State_Init(message)
    if message == OnEnter then

        if Find_Player("Empire").Is_Human() then
            sectorBases = {"CSA_Star_Base_1", "CSA_Star_Base_2", "CSA_Star_Base_3", "CSA_Star_Base_4"}
            for i, base in pairs(sectorBases) do
                if Find_First_Object(base) then
                    StoryUtil.ShowScreenText("TEXT_CONQUEST_EVENT_REPUBLIC_ATTACK_SECTOR", 120)
                    invadingSectors = true
                end
            end
        elseif Find_Player("Rebel").Is_Human() then

            cisBases = {"NR_Star_Base_1", "NR_Star_Base_2", "NR_Star_Base_3", "NR_Star_Base_4"}

            techno = Find_Player("Hutts")
            igbc = Find_Player("Pentastar")
            tradefed = Find_Player("Pirates")
            commerce = Find_Player("Teradoc")

            for i, base in pairs(cisBases) do
                if Find_First_Object(base) then

                    defender = Find_First_Object(base).Get_Owner()

                    if defender == techno then
                        StoryUtil.ShowScreenText("TEXT_CONQUEST_EVENT_CIS_ATTACK_TECHNO", 120)

                        currentSupport = GlobalValue.Get("TechnoApprovalRating")
                        GlobalValue.Set("TechnoApprovalRating", currentSupport - 5)

                   elseif defender == igbc then
                        StoryUtil.ShowScreenText("TEXT_CONQUEST_EVENT_CIS_ATTACK_IGBC", 120)

                        currentSupport = GlobalValue.Get("IGBCApprovalRating")
                        GlobalValue.Set("IGBCApprovalRating", currentSupport - 5)
                
                    elseif defender == tradefed then
                        StoryUtil.ShowScreenText("TEXT_CONQUEST_EVENT_CIS_ATTACK_TRADEFED", 120)

                        currentSupport = GlobalValue.Get("TradeFedApprovalRating")
                        GlobalValue.Set("TradeFedApprovalRating", currentSupport - 5)

                   elseif defender == commerce then
                        StoryUtil.ShowScreenText("TEXT_CONQUEST_EVENT_CIS_ATTACK_COMMERCE", 120)

                        currentSupport = GlobalValue.Get("CommerceApprovalRating")
                        GlobalValue.Set("CommerceApprovalRating", currentSupport - 5)

                    end
                end
            end          
        end
    end
end

function Remove_Influence(message)
    if message == OnEnter then
        if invadingSectors == true then
            currentSupport = GlobalValue.Get("RepublicApprovalRating")
            GlobalValue.Set("RepublicApprovalRating", currentSupport - 2)
        end
    end
end
