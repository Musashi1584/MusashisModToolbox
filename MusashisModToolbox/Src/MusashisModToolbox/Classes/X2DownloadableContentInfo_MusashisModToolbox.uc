//---------------------------------------------------------------------------------------
//  FILE:   XComDownloadableContentInfo_MusashisModToolbox.uc                                    
//           
//	Use the X2DownloadableContentInfo class to specify unique mod behavior when the 
//  player creates a new campaign or loads a saved game.
//  
//---------------------------------------------------------------------------------------
//  Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
//---------------------------------------------------------------------------------------

class X2DownloadableContentInfo_MusashisModToolbox extends X2DownloadableContentInfo;


/// <summary>
/// Called after the Templates have been created (but before they are validated) while this DLC / Mod is installed.
/// </summary>
static event OnPostTemplatesCreated()
{
	local JsonConfig_ManagerInterFace TestConfigManager;
	local string TestValue;

	TestConfigManager = class'ConfigFactory'.static.GetConfigManager("TestConfigManager");

	TestConfigManager.SetConfigString("FOO", "BAR");
	TestConfigManager.SetConfigString("FOO2", "BAR2");
	TestConfigManager.SerializeAndSaveConfig();

	TestValue = TestConfigManager.GetConfigStringValue("A_STRING_PROPERTY");

	`LOG(default.class @ GetFuncName() @ `ShowVar(TestValue) @ `ShowVar(TestConfigManager.GetDefaultConfigManager()),, 'MusashisModToolbox');
}


static function OnPreCreateTemplates()
{
	//local JsonConfig_ManagerInterface ClientTestConfigManager;
	//`XEVENTMGR.TriggerEvent('GetJsonConfigManagerBootStrapped', ClientTestConfigManager, self);
	

}

/// <summary>
/// Called when the difficulty changes and this DLC is active
/// </summary>
//static event OnDifficultyChanged()
//{

//}

/// <summary>
/// Called by the Geoscape tick
/// </summary>
//static event UpdateDLC()
//{

//}

/// <summary>
/// Called after HeadquartersAlien builds a Facility
/// </summary>
//static event OnPostAlienFacilityCreated(XComGameState NewGameState, StateObjectReference MissionRef)
//{

//}

/// <summary>
/// Called after a new Alien Facility's doom generation display is completed
/// </summary>
//static event OnPostFacilityDoomVisualization()
//{

//}

/// <summary>
/// Called when viewing mission blades with the Shadow Chamber panel, used primarily to modify tactical tags for spawning
/// Returns true when the mission's spawning info needs to be updated
/// </summary>
//static function bool UpdateShadowChamberMissionInfo(StateObjectReference MissionRef)
//{
//	return false;
//}

/// <summary>
/// A dialogue popup used for players to confirm or deny whether new gameplay content should be installed for this DLC / Mod.
/// </summary>
//static function EnableDLCContentPopup()
//{
//	local TDialogueBoxData kDialogData;

//	kDialogData.eType = eDialog_Normal;
//	kDialogData.strTitle = default.EnableContentLabel;
//	kDialogData.strText = default.EnableContentSummary;
//	kDialogData.strAccept = default.EnableContentAcceptLabel;
//	kDialogData.strCancel = default.EnableContentCancelLabel;

//	kDialogData.fnCallback = EnableDLCContentPopupCallback_Ex;
//	`HQPRES.UIRaiseDialog(kDialogData);
//}

//simulated function EnableDLCContentPopupCallback(eUIAction eAction)
//{
//}

//simulated function EnableDLCContentPopupCallback_Ex(Name eAction)
//{	
//	switch (eAction)
//	{
//	case 'eUIAction_Accept':
//		EnableDLCContentPopupCallback(eUIAction_Accept);
//		break;
//	case 'eUIAction_Cancel':
//		EnableDLCContentPopupCallback(eUIAction_Cancel);
//		break;
//	case 'eUIAction_Closed':
//		EnableDLCContentPopupCallback(eUIAction_Closed);
//		break;
//	}
//}

/// <summary>
/// Called when viewing mission blades, used primarily to modify tactical tags for spawning
/// Returns true when the mission's spawning info needs to be updated
/// </summary>
//static function bool ShouldUpdateMissionSpawningInfo(StateObjectReference MissionRef)
//{
//	return false;
//}

/// <summary>
/// Called when viewing mission blades, used primarily to modify tactical tags for spawning
/// Returns true when the mission's spawning info needs to be updated
/// </summary>
//static function bool UpdateMissionSpawningInfo(StateObjectReference MissionRef)
//{
//	return false;
//}

/// <summary>
/// Called when viewing mission blades, used to add any additional text to the mission description
/// </summary>
//static function string GetAdditionalMissionDesc(StateObjectReference MissionRef)
//{
//	return "";
//}

/// <summary>
/// Called from X2AbilityTag:ExpandHandler after processing the base game tags. Return true (and fill OutString correctly)
/// to indicate the tag has been expanded properly and no further processing is needed.
/// </summary>
//static function bool AbilityTagExpandHandler(string InString, out string OutString)
//{
//	return false;
//}

/// <summary>
/// Called from XComGameState_Unit:GatherUnitAbilitiesForInit after the game has built what it believes is the full list of
/// abilities for the unit based on character, class, equipment, et cetera. You can add or remove abilities in SetupData.
/// </summary>
//static function FinalizeUnitAbilitiesForInit(XComGameState_Unit UnitState, out array<AbilitySetupData> SetupData, optional XComGameState StartState, optional XComGameState_Player PlayerState, optional bool bMultiplayerDisplay)
//{
//
//}

/// <summary>
/// Calls DLC specific popup handlers to route messages to correct display functions
/// </summary>
//static function bool DisplayQueuedDynamicPopup(DynamicPropertySet PropertySet)
//{

//}