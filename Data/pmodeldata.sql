insert into pmodel
SELECT d.State, d.FacilityName, d.FacilityID, d.UnitID, d.GDate, d.GYear, d.ElectricityGeneration, d.UnitTechnologyType, d.FuelType, 
x.NameplateCapacityMW, x.GOwner, x.GeneratorID, x.UtilityName, x.UtilityID, x.NameplatePowerFactor, x.SummerCapacityMW , x.WinterCapacityMW 
FROM
dailygen d JOIN x
on d.FacilityID = x.PlantCode;