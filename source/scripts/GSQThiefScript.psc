Scriptname GSQThiefScript extends ReferenceAlias

Quest Property TutorialQuest  Auto  

Event OnDeath(Actor killer)
	if (TutorialQuest.GetStage() < 30)
       	TutorialQuest.SetObjectiveDisplayed(20)
		TutorialQuest.SetStage(20)
	endif
EndEvent