insert into X
select p.PlantCode, p.PlantName, p.UnitCode, p.NameplateCapacityMW, p.Status, p.State, p.Ownership, p.GeneratorID, p.UtilityID, p.UtilityName,
p.NameplatePowerFactor, p.SummerCapacityMW , p.WinterCapacityMW 

from proposed p 
where p.State = 'NC' or p.State = 'SC' or p.State = 'GA' or p.State = 'AL'
union all 
select o.PlantCode, o.PlantName, o.UnitCode, o.NameplateCapacityMW, o.Status, o.State, o.Ownership, o.GeneratorID, o.UtilityID, o.UtilityName ,
o.NameplatePowerFactor, o.SummerCapacityMW , o.WinterCapacityMW 

from operable o 
where o.State = 'NC' or o.State = 'SC' or o.State = 'GA' or o.State = 'AL'
union all 
select r.PlantCode, r.PlantName, r.UnitCode, r.NameplateCapacityMW, r.Status, r.State, r.Ownership, r.GeneratorID, r.UtilityID, r.UtilityName ,
r.NameplatePowerFactor, r.SummerCapacityMW , r.WinterCapacityMW 

from retiredcanceled r
where r.State = 'NC' or r.State = 'SC' or r.State = 'GA' or r.State = 'AL';