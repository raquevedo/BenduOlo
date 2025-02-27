;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname QF_GSQ01_03000D61 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Bendu
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bendu Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThiefLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_ThiefLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Gilfre
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gilfre Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LocationMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LocationMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Amulet
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Amulet Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(30)
Alias_Bendu.GetReference().AddItem(Alias_Amulet.GetReference())
Game.GetPlayer().AddItem(Gold001, Alias_Amulet.GetReference().GetGoldValue() * 2)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)

Alias_Thief.GetReference().Enable()

Alias_LocationMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
if (!GetStageDone(20))
    SetObjectiveDisplayed(10, False)
endif

SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property DungeonMarker  Auto  

MiscObject Property Gold001  Auto  
