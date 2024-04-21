-- 1) 
-- Descriptive Statistics 
-- Calculating summary statistics for Age column
select 
	avg(Age) as average_age,
    min(Age) as min_age,
    max(Age) as max_age,
    stddev(Age) as std_age
from hrdata

-- Counting the number of unique values for categorical columns
select 
	count(*) as total_records,
    count(distinct Gender) as unique_gender_count,
    count(distinct Education) as unique_education_count
from hrdata

-- Identifying missing values in the dataset
select 
	count(*) as total_records,
    count("Employee Number") as non_null_count
from hrdata

-- 2)
-- Data Exploration
-- Distribution of Age (For Histogram)
select 
	age, 
	count(*) as count
from hrdata
group by age
order by age

-- Distribution of daily rate
select
	`Daily Rate`,
    count(*) as daily_count
from hrdata
group by `Daily Rate`
order by `Daily Rate`

-- 3)
-- Employee Attrition Analysis
-- Exploring the proportion of employees who have left the company
select 
	`CF_attrition label`,
    count(*) as count
from hrdata
group by `CF_attrition label`

-- Comparing average age, daily rate, and monthly income for employees who left and those who stayed
select
	`CF_attrition label`,
    avg(age) as average_age,
    avg(`Daily Rate`) as average_daily_rate,
    avg(`Monthly Rate`) as average_monthly_rate
from hrdata
group by `CF_attrition label`

-- 4)
-- Gender Analysis
-- Investigating the gender distribution in the dataset
select 
	gender,
    count(*) as count
from hrdata
group by gender

-- 5)
-- Job-related analysis
-- Examining the distribution of job roles in the company
select
	`Job Role`,
    count(*) as count
from hrdata
group by `Job Role`

-- 6)
-- Analyzing the distribution of work-life balance scores
select
	`Work Life Balance`,
    count(*) as count
from hrdata
group by `Work Life Balance`

-- 7)
-- Training Analysis
-- Examining the relation between training times last year and performance rating
select
	`Training Times Last Year`,
    avg(`Performance Rating`) as average_performance_rating
from hrdata
group by `Training Times Last Year`

-- 8)
-- Years Analysis
-- Analyzing the distribution of years at the company
select 
	`Years At Company`,
    count(*) as count
from hrdata
group by `Years At Company`
	






	