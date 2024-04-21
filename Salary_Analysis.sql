-- Salary Analysis
-- Determining the average salary by education field and gender
with avg_salaries as (
	select 
		`Education Field`,
		gender,
		avg(`Monthly Rate`) as average_salary
	from hrdata
	group by `Education Field`, gender
)

-- Identifying any significant salary disparities based on education and gender
select 
	`Education Field`,
	gender,
	avg(`Monthly Rate`) as average_salary,
    max(`Monthly Rate`) as max_salary,
    min(`Monthly Rate`) min_salary,
    max(`Monthly Rate`) - min(`Monthly Rate`) as salary_change
from hrdata
group by `Education Field`, gender
having abs(max(`Monthly Rate`) - min(`Monthly Rate`)) > 20000
