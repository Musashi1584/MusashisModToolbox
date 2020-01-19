//-----------------------------------------------------------
//	Class:	MCM_Builder_ScreenListener
//	Author: Musashi
//	
//-----------------------------------------------------------
class MCM_Builder_ScreenListener extends UIScreenListener;

event OnInit(UIScreen Screen)
{
	local MCM_Builder_Screen MCMScreen;
	local object Temp;
	local JsonConfig_Manager ManagerTemplate;

	if (ScreenClass==none)
	{
		if (MCM_API(Screen) != none)
			ScreenClass=Screen.Class;
		else return;
	}

	MCMScreen = new class'MCM_Builder_Screen';
	MCMScreen.OnInit(Screen);

	Temp = class'XComEngine'.static.GetClassByName('JsonConfig_Manager');
	ManagerTemplate = JsonConfig_Manager(Temp);
	`LOG(default.class @ GetFuncName() @ `ShowVar(Temp) @ `ShowVar(ManagerTemplate),, 'MusashisModToolbox');
}

defaultproperties
{
    ScreenClass = none;
}
