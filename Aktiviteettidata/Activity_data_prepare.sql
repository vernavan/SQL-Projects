
Select * 
from Aktiviteetit

Select Paivays, CONVERT(Date, Paivays)
From Aktiviteetit

-- Standardize date column
-- by adding updated column
ALTER TABLE Aktiviteetit
Add PaivaysStandard Date;

UPDATE Aktiviteetit
SET PaivaysStandard = CONVERT(Date, Paivays)

-- Delete old date column
ALTER TABLE Aktiviteetit
DROP COLUMN Paivays

-- Split column Otsikko by "-" or " " and save location and activity type separately


