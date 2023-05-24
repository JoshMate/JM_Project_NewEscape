function F_Ent_BASE_Main_Init(){
	
	// Info
	entInfoName													= "Entity Name"
	entInfoDescription											= "Entity Description"
	
	// Art
	entArtDebrisSprite											= SP_Default
	entArtDebrisColour											= c_white
	entArtCorpseSprite											= SP_Default

	// World
	entWorldCanWalkOver											= false
	entWorldCanSeeOver											= false
	entWorldCanShootOver										= false
	entWorldMaterialThickness									= 0.50
	
	// Stat
	entStatHealth												= 100
	
	entStatHealthMaxBase										= 100
	entStatHealthMaxBonusMult									= 1
	entStatHealthMaxBonusFlat									= 0
	entStatHealthMaxFinal										= 0
	
	entStatToxicLevel											= 0
	
	entStatToxicLevelMaxBase									= 100
	entStatToxicLevelMaxBonusMult								= 1
	entStatToxicLevelMaxBonusFlat								= 0
	entStatToxicLevelMaxFinal									= 0
	
	entStatResistanceMeleeBase									= 0
	entStatResistanceMeleeBonusMult								= 0
	entStatResistanceMeleeBonusFlat								= 0
	entStatResistanceMeleeFinal									= 0
	
	entStatResistanceBulletBase									= 0
	entStatResistanceBulletBonusMult							= 1
	entStatResistanceBulletBonusFlat							= 0
	entStatResistanceBulletFinal								= 0
	
	entStatResistanceEnergyBase									= 0
	entStatResistanceEnergyBonusMult							= 1
	entStatResistanceEnergyBonusFlat							= 0
	entStatResistanceEnergyFinal								= 0
	
	entStatResistanceFireBase									= 0
	entStatResistanceFireBonusMult								= 1
	entStatResistanceFireBonusFlat								= 0
	entStatResistanceFireFinal									= 0
	
	entStatResistanceExplosiveBase								= 0
	entStatResistanceExplosiveBonusMult							= 1
	entStatResistanceExplosiveBonusFlat							= 0
	entStatResistanceExplosiveFinal								= 0
	
	entStatResistanceToxicBase									= 0
	entStatResistanceToxicBonusMult								= 1
	entStatResistanceToxicBonusFlat								= 0
	entStatResistanceToxicFinal									= 0
	
	// Functions
	entFuncOnCreate												= F_BASE
	entFuncOnStep												= F_BASE
	entFuncOnDestroy											= F_BASE
	

}

function F_Ent_BASE_Main_Step(){
	
	// Calc Final Stats Health Bar
	entStatHealthMaxFinal		=	(entStatHealthMaxBase		*	entStatHealthMaxBonusMult)		+ entStatHealthMaxBonusFlat
	entStatToxicLevelMaxFinal	=	(entStatToxicLevelMaxBase	*	entStatToxicLevelMaxBonusMult)	+ entStatToxicLevelMaxBonusFlat
	
	// Calc Final Stats Resistance
	entStatResistanceMeleeFinal			=	(entStatResistanceMeleeBase		*	entStatResistanceMeleeBonusMult)		+ entStatResistanceMeleeBonusFlat
	entStatResistanceBulletFinal		=	(entStatResistanceBulletBase	*	entStatResistanceBulletBonusMult)		+ entStatResistanceBulletBonusFlat
	entStatResistanceEnergyFinal		=	(entStatResistanceEnergyBase	*	entStatResistanceEnergyBonusMult)		+ entStatResistanceEnergyBonusFlat
	entStatResistanceFireFinal			=	(entStatResistanceFireBase		*	entStatResistanceFireBonusMult)			+ entStatResistanceFireBonusFlat
	entStatResistanceExplosiveFinal		=	(entStatResistanceExplosiveBase	*	entStatResistanceExplosiveBonusMult)	+ entStatResistanceExplosiveBonusFlat
	entStatResistanceToxicFinal			=	(entStatResistanceToxicBase		*	entStatResistanceToxicBonusMult)		+ entStatResistanceToxicBonusFlat



}