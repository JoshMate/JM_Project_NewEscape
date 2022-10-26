function F_Ent_BASE_Init(){
	
	// Info
	entInfoName												= "Entity Name"
	entInfoDescription										= "Entity Description"
	
	// Art
	entArtDebrisSprite										= SP_BASE
	entArtDebrisColour										= c_white
	entArtCorpseSprite										= SP_BASE

	
	// World
	entWorldCanWalkOver									= false
	entWorldCanSeeOver									= false
	entWorldCanShootOver									= false
	entWorldMaterialThickness							= 0.50
	
	// Stat
	entStatHealth												= 100
	
	entStatHealthMax										= 100
	entStatHealthMaxBonus								= 0
	entStatHealthMaxFinal									= 0
	
	entStatPoisionLevel										= 100
	
	entStatPoisionLevelMax								= 100
	entStatPoisionLevelMaxBonus						= 0
	entStatPoisionLevelMaxFinal							= 0
	
	entStatResistanceMelee								= 0
	entStatResistanceMeleeBonus						= 0
	entStatResistanceMeleeFinal							= 0
	
	entStatResistanceBullet								= 0
	entStatResistanceBulletBonus						= 0
	entStatResistanceBulletFinal							= 0
	
	entStatResistanceEnergy								= 0
	entStatResistanceEnergyBonus						= 0
	entStatResistanceEnergyFinal						= 0
	
	entStatResistanceFire									= 0
	entStatResistanceFireBonus							= 0
	entStatResistanceFireFinal								= 0
	
	entStatResistanceExplosive							= 0
	entStatResistanceExplosiveBonus					= 0
	entStatResistanceExplosiveFinal						= 0
	
	entStatResistanceToxic									= 0
	entStatResistanceToxicBonus							= 0
	entStatResistanceToxicFinal							= 0
	
	// Functions
	entFuncOnCreate											= F_BASE
	entFuncOnStep											= F_BASE
	entFuncOnDestroy										= F_BASE
	

}