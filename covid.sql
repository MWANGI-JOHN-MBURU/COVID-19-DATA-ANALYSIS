create database covid;
use covid;
select *
from `country_wise_latest`;



select sum(Confirmed) as Total_confirmed_cases, 
sum(Deaths) as Total_confirmed_deaths,
sum(Recovered) as Total_recovered_cases,
sum(Active) as Total_active_cases,
sum(`New cases`) as Total_confirmed_new_cases,
sum(`New deaths`) as Total_confirmed_new_deaths,
sum(Confirmed) as Total_confirmed_new_recoveries
from `country_wise_latest`;


select `WHO Region`,count( `Country/Region`) as Total_countries
from `country_wise_latest`
group by `WHO Region`
order by count( `Country/Region`) desc ;


select `WHO Region`, sum(Confirmed)
from `country_wise_latest`
group by `WHO Region`
order by sum(Confirmed) desc ;


select `Country/Region`, sum(Confirmed)
from `country_wise_latest`
group by `Country/Region`
order by sum(Confirmed) desc 
limit 10;

select `Country/Region`, sum(Confirmed) as Total_Confirmed_Cases
from `country_wise_latest`
group by `Country/Region`
order by sum(Confirmed) 
limit 10;

select `Country/Region`, sum(Confirmed) as Total_Confirmed_Cases
from `country_wise_latest`
where `WHO Region`='Africa'
group by `Country/Region`
order by sum(Confirmed) desc 
limit 5;


select `Country/Region`, sum(Confirmed)
from `country_wise_latest`
where `WHO Region`='Africa'
group by `Country/Region`
order by sum(Confirmed) 
limit 5;


select 
round(sum(Deaths)/sum(Confirmed) * 100,2) as fatality_rate,
round(sum(Recovered)/sum(Confirmed) * 100,2) as recovery_rate
from `country_wise_latest`;



