LOAD DATA LOCAL INFILE 'C:\\Users\\shwet\\Desktop\\greenlink\\csv\\dailygen.txt' 
INTO TABLE greenlink.dailygen FIELDS 
TERMINATED BY '\t' LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
State ,	 
FacilityName ,	 
FacilityID ,	 
UnitID	 ,
GDate ,
GYear ,
ElectricityGeneration ,	 
UnitTechnologyType	 ,
FuelType 
)