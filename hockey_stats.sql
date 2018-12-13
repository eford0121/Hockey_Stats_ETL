create database hockey_db;
use hockey_db;

drop table if exists player_stats;

create table injury(
Last_Name varchar(250),
First_Name varchar(250),
Jersey_Number int,
Team_Position text,
Team_City text,
Team_Name text,
Injury text,
primary key (Last_Name, First_Name)
);

create table player_stats (
Last_Name varchar(250),
First_Name varchar(250),
Birth_Date varchar(250),
Birth_City text,
Birth_Country text,
Team_Position text,
Current_Roster_Status text
);

select * from injury;
select * from player_stats;

select i.Last_Name, i.First_Name, i.Team_Position, i.Team_Name, i.Injury, p.Birth_Date, p.Birth_Country, p.Current_Roster_Status
from injury i
join player_stats p
on (i.Last_Name = p.Last_Name and i.First_Name = p.First_Name);



