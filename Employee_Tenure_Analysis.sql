-- Employee Tenure Analysis
-- Calculating the average tenure of employees at the company
select
	avg(`Years At company`) as average_tenure
from hrdata

-- Determining the distribution of employees based on their tenure (Eg: less than 1 year, 1-5 years, 5-10 years, more than 10 years)
select
	case
		when `Years At company` < 1 then 'Less than 1 year'
        when `Years At company` > 1 and `Years At company` <= 5 then '1-5 Years'
        when `Years At company` > 5 and `Years At company` <= 10 then '5-10 Years'
        else 'More than 10 years'
	end as tenure_group,
    count(*) as count
from hrdata
group by tenure_group
order by count