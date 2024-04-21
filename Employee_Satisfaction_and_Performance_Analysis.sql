-- Determining the average performance rating of employees grouped by job, environment, and relationship satisfaction
select
	`Job Satisfaction`,
    `Environment Satisfaction`,
    `Relationship Satisfaction`,
    avg(`Performance Rating`) as average_perf_rating
from hrdata
group by `Job Satisfaction`,
    `Environment Satisfaction`,
    `Relationship Satisfaction`
    
-- Analyzing if there's any variation in performance ratings based on different levels of satisfaction
select
	`Job Satisfaction`,
    avg(`Performance Rating`) as average_perf_rating
from hrdata
group by `Job Satisfaction`

select
    `Environment Satisfaction`,
    avg(`Performance Rating`) as average_perf_rating
from hrdata
group by `Environment Satisfaction`

select
    `Relationship Satisfaction`,
    avg(`Performance Rating`) as average_perf_rating
from hrdata
group by `Relationship Satisfaction`

-- Comparing the performance ratings across different job levels and departments while considering job satisfaction
select
	`Job Level`,
    Department,
    `Job Satisfaction`,
    avg(`performance rating`) as average_perf_rating
from hrdata
group by `Job Level`, Department, `Job Satisfaction`
order by `Job Level`, Department

    
    

    