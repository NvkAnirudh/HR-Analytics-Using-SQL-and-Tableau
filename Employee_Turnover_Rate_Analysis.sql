-- Employee Turnover Rate Analysis
-- Calculating the turnover rate for each department
with turnover_rates as (
	select
		Department, 
		count(case when `CF_Attrition label` = 'Ex-Employees' then 1 end) as attrition_count,
		count(*) as total_employees,
		(count(case when `CF_Attrition label` = 'Ex-Employees' then 1 end) / count(*)) * 100 as turnover_rate
	from hrdata
	group by Department
)

-- Identifying departments with highest turnover rates
select * 
from turnover_rates 
order by turnover_rate desc
limit 1
