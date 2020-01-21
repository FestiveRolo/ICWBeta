require("trlib-std/class")
require("PGStoryMode")
StoryUtil = require("trlib-util/StoryUtil")


---@class MissionRepConquerPlanet
MissionRepConquerPlanet = class()

function MissionRepConquerPlanet:new(player_agnostic_plot)

end

function MissionRepConquerPlanet:begin()

	if not ConquerObserverThread then

		dialog = "MISSION_DIALOG_REP_CONQUER_PLANET"
		
		plot = Get_Story_Plot("Conquests\\MissionFiles\\Intervention_Conquer_Planet_Rep.xml")

		target = StoryUtil.FindFriendlyPlanet(Find_Player("Rebel"))
		
		reward_unit = Find_Object_Type("Generic_Acclamator_Assault_Ship_I")
		reward_count = 4
		
		event = plot.Get_Event("Conquer_Planet_00")
		event.Set_Dialog(dialog)
		event.Clear_Dialog_Text()
		event.Add_Dialog_Text("TEXT_INTERVENTION_OBJECTIVE_CONQUER_TARGET", target)
		event.Add_Dialog_Text("TEXT_INTERVENTION_REWARD", reward_unit, reward_count)
		
		
		event = plot.Get_Event("Conquer_Planet_01")
		event.Set_Event_Parameter(0, target)

		plot.Activate()

		ConquerObserverThread = Create_Thread("Conquer_Observer_Rep")
	end

end

function Conquer_Observer_Rep()

	while not Find_First_Object("Dummy_Intervention_Conquer") do
		Sleep(1)
	end	

	object = Find_First_Object("Dummy_Intervention_Conquer")
	object.Despawn()

	plot = Get_Story_Plot("Conquests\\MissionFiles\\Intervention_Conquer_Planet_Rep.xml")

	republic = Find_Player("Empire")
	reward_location = StoryUtil.FindFriendlyPlanet(Find_Player("Empire"))
	spawn_list_reward = { "Generic_Acclamator_Assault_Ship_I" , "Generic_Acclamator_Assault_Ship_I", "Generic_Acclamator_Assault_Ship_I", "Generic_Acclamator_Assault_Ship_I" }
	SpawnList(spawn_list_reward, reward_location, republic, true, false)

	currentSupport = GlobalValue.Get("RepublicApprovalRating")
	GlobalValue.Set("RepublicApprovalRating", currentSupport + 2)

	plot.Suspend()

	plot.Reset()

	if ConquerObserverThread then
		Thread.Kill(ConquerObserverThread)
		ConquerObserverThread = nil
	end

end

return MissionRepConquerPlanet
