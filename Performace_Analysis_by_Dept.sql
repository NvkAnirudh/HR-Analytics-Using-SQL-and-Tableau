-- Performance Analysis by Department
-- Comparing the average performace rating across different departments
with department_average as (
	select 
		Department,
		avg(`Performance Rating`) as average_perf_rating
	from hrdata
	group by Department
    order by average_perf_rating desc
)

-- Identifying departments with the highest and lowest average performace ratings
select 
	Department,
	average_perf_rating
from department_average
where average_perf_rating = 
	(
		select max(average_perf_rating) from department_average
    )
or
	average_perf_rating = 
    (
		select min(average_perf_rating) from department_average
    )