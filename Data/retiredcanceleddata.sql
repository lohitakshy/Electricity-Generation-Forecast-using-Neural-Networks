LOAD DATA LOCAL INFILE 'C:\\Users\\shwet\\Desktop\\greenlink\\csv\\retiredcanceled.txt' 
INTO TABLE greenlink.retiredcanceled FIELDS 
TERMINATED BY '\t' LINES TERMINATED BY '\n'
IGNORE 1 LINES 
(
UtilityID, 	UtilityName, 	PlantCode 	,PlantName 	,State 	,County 	,GeneratorID 	,Technology 	,PrimeMover 	,UnitCode 	,Ownership 	,DuctBurners 	,CanBypassHeatRecoverySteamGenerator, 	RTOISOLMPNodeDesignation 	,RTOISOLocationDesignation 	,NameplateCapacityMW 	,NameplatePowerFactor 	,SummerCapacityMW 	,WinterCapacityMW 	,MinimumLoadMW 	,UprateorDerateCompletedDuringYear 	,MonthUprateorDerateCompleted 	,YearUprateorDerateCompleted 	,Status 	,SynchronizedtoTransmissionGrid 	,OperatingMonth 	,OperatingYear 	,RetirementMonth 	,RetirementYear 	,AssociatedwithCombinedHeatandPowerSystem 	,SectorName 	,Sector 	,ToppingorBottoming 	,ES1 	,ES2 	,ES3 	,ES4 	,ES5 	,ES6 	,SS1 	,SS2 	,SS3 	,SS4 	,SolidFuelGasificationSystem, 	CarbonCaptureTechnology, 	TurbinesorHydrokineticBuoys 	,TimefromColdShutdowntoFullLoad 	,FluidizedBedTechnology, 	PulverizedCoalTechnology, 	StokerTechnology, 	OtherCombustionTechnology, 	SubcriticalTechnology, 	SupercriticalTechnology, 	UltrasupercriticalTechnology, 	MultipleFuels, 	CofireFuels, 	SwitchBetweenOilandNaturalGas 

);