LOAD DATA LOCAL INFILE 'C:\\Users\\shwet\\Desktop\\greenlink\\csv\\GA2017.txt' 
INTO TABLE greenlink.ga FIELDS 
TERMINATED BY '\t' LINES TERMINATED BY '\n'
IGNORE 1 LINES 
(
State,	 FacilityName,	 FacilityID,	 UnitID,	 GDate,	 GYear,	 GOwner,	 UnitType,	 FuelType, 	ElectricityGeneration 
);

insert into predmodel
SELECT ga.State, ga.FacilityName, ga.FacilityID, ga.UnitID, ga.GDate, ga.GYear, ga.ElectricityGeneration, ga.FuelType, 
x.NameplateCapacityMW, x.GOwner, x.GeneratorID, x.UtilityName, x.UtilityID, x.NameplatePowerFactor, x.SummerCapacityMW , x.WinterCapacityMW 
FROM
ga JOIN x
on ga.FacilityID = x.PlantCode;