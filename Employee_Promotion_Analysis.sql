-- Employee Promotion Analysis
-- Determining the average time since the last promotion for employees who were promoted
select 
	avg(`Years Since Last Promotion`) as average_years_since_last_promotion
from hrdata
where `Years Since Last Promotion` > 0

-- Analyzing the distribution of promotions based on job level
select 
	`Job Level`,
    count(*) as promotion_count
from hrdata
where `Years Since Last Promotion` > 0
group by `Job Level`

