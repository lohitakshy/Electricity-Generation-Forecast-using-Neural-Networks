ALTER TABLE pmodel
MODIFY COLUMN NameplateCapacityMW decimal(10,4);

ALTER TABLE pmodel
MODIFY COLUMN SummerCapacityMW decimal(10,4);

ALTER TABLE pmodel
MODIFY COLUMN ElectricityGeneration decimal(10,4);

ALTER TABLE pmodel
MODIFY COLUMN WinterCapacityMW decimal(10,4);

ALTER TABLE pmodel
MODIFY COLUMN NameplatePowerFactor decimal(10,4);



select distinct NameplateCapacityMW from pmodel ;

select * from pmodel where row is  null;

select * from
(
SELECT @rownum:=@rownum + 1 as row_number, 
       t.*
FROM ( 
  select * from pmodel
) t,
(SELECT @rownum := 0) r
) a where row_number = 1209624;

select distinct NameplateCapacityMW from pmodel where NameplateCapacityMW like '%"%';

update pmodel set NameplateCapacityMW = '1245.60' where NameplateCapacityMW like '%"%';


select distinct SummerCapacityMW from pmodel where SummerCapacityMW like '%"%';
update pmodel set SummerCapacityMW = '1111.00' where SummerCapacityMW like '%"%';

select distinct ElectricityGeneration from pmodel where ElectricityGeneration like '%"%';

update pmodel set WinterCapacityMW = '1111.00' where WinterCapacityMW like '%"%';
select distinct WinterCapacityMW from pmodel where WinterCapacityMW like '%"%';

select distinct NameplatePowerFactor from pmodel where NameplatePowerFactor like '% %';

update pmodel set NameplatePowerFactor = '0.0' where NameplatePowerFactor like '% %';
