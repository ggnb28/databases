insert into city(ID, Name, CountryCode, District, Population)
values (123456, 'Name', 'AFG', 'District', 100)
;


select ID, Name, CountryCode, District, Population
from city
where Name = 'Name'
;

update city
set Population = 2000
where Name = 'Name'
;

delete from city
where Name = 'Name'
;


