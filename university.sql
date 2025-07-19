create database university;
use university;

create table university_rank (
Rank nvarchar(100),
University_name nvarchar(100),
locationLocation nvarchar(100),
Number_of_Studnet nvarchar(100),
Number_of_student_per_staffs nvarchar(100),
International_Student nvarchar(100),
Female_male_ratio nvarchar(100)
);

bulk insert university_rank
from 'D:\DataAnalysis\projects\university\world_university_rank.csv'
with(
firstrow = 2,
fieldterminator = ',',
rowterminator = '\n',
TEXTQUALIFIER = '"'
);

select * from university_rank where Rank = '10';

select locationLocation, COUNT(*) as university_count
from university_rank
group by locationLocation
order by university_count desc;

