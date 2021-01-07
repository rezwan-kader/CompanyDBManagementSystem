--Query 1
select founder from Companies where category = 'Technology'
--Query 2
select distinct founder from Companies order by founder
--Query 3
select company_name from Companies where networth_busd between 10 and 40
--Query 4
(select founder from Companies where country = 'China' and category = 'Conglomerate')
union
(select founder from Companies where country = 'United States' and category = 'Technology')
--Query 5
(select founder from Companies where country = 'United States' and category = 'Conglomerate')
intersect
(select founder from Companies where country = 'United States' and category = 'Technology')
--Query 6
(select founder from Companies where country = 'United States' and category = 'Conglomerate')
except
(select founder from Companies where country = 'United States' and category = 'Technology')
--Query 7
select company_name from Companies where co_founder is null
--Query 8
select avg(networth_busd) from Companies where category = 'Technology'
--Query 9
select count(distinct category) from Companies where country = 'United States' and networth_busd > 50
--Query 10
select count(*) from CountryLog
--Query 11
select company_name,avg(networth_busd) from Companies group by company_name
--Query 12
update Companies set networth_busd = networth_busd*1.03 where networth_busd > 100