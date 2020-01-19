//-----------------------------------------------------------
//	Class:	ConfigFactory
//	Author: Musashi
//	DO NOT MAKE ANY CHANGES TO THIS CLASS
//-----------------------------------------------------------
class ConfigFactory extends Object;

static function JsonConfig_ManagerInterface GetConfigManager(string ManagerName)
{
	local MMT_SingletonFactoryInterface SingletonFactoryInterface;
	local object SingletonFactoryCDO;
	
	SingletonFactoryCDO = class'XComEngine'.static.GetClassDefaultObjectByName('MMT_SingletonFactory');
	SingletonFactoryInterface = MMT_SingletonFactoryInterface(SingletonFactoryCDO);
	return SingletonFactoryInterface.static.GetManagerInstance(ManagerName);
}