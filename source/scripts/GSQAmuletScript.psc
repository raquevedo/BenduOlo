Scriptname GSQAmuletScript extends ReferenceAlias

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if (newContainer == Game.GetPlayer())
       	GetOwningQuest().SetObjectivedisplayed(30)
		GetOwningQuest().SetStage(30)
	endif
EndEvent