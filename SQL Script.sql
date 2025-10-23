create database Jobs;

select * from ai_job;

-- Salary BenchMark
-- 1. Average, median, min, and max salary for the top 10 most frequent job titles
select 
	job_title,
    count(job_id) as job_count,
    avg(salary_usd) as avg_salary,
    min(salary_usd) as min_salary,
    max(salary_usd) as max_salary
from ai_job
group by job_title
order by job_count desc
limit 10;

-- 2. Average salary by experience level
select
	experience_level,
    ROUND(avg(salary_usd), 1) as avg_salary,
    count(job_id) as job_count
from ai_job
group by experience_level
order by avg_salary;

-- 3. Industry with the highest average salary
select
	industry,
    ROUND(avg(salary_usd), 1) as avg_salary
from ai_job
where industry is not null
group by industry
order by avg_salary desc
limit 5;

-- Remote Work & Location Analysis
-- 1. percentage distribution of jobs by remote ratio
SELECT
    CASE
        WHEN remote_ratio = 100 THEN 'Fully Remote'
        WHEN remote_ratio = 50 THEN 'Hybrid'
        WHEN remote_ratio = 0 THEN 'On-site'
        ELSE 'Other'
    END AS work_setting,
    COUNT(job_id) AS job_count,
    round((COUNT(job_id) * 100.0 / (SELECT COUNT(*) FROM ai_job)), 1) AS percentage
FROM
    ai_job
GROUP BY
    work_setting
ORDER BY
    percentage DESC;

-- 2. Salary comparison for 'Data Analyst' by remote ratio
SELECT
    CASE
        WHEN remote_ratio = 100 THEN 'Fully Remote'
        WHEN remote_ratio = 50 THEN 'Hybrid'
        WHEN remote_ratio = 0 THEN 'On-site'
    END AS work_setting,
    round(avg(salary_usd), 1) AS average_salary,
    COUNT(job_id) AS job_count
FROM
    ai_job
WHERE
    job_title = 'Data Analyst' -- Change this for other titles
    AND remote_ratio IN (0, 50, 100)
GROUP BY
    work_setting
ORDER BY
    average_salary DESC;

    
-- 3. Data Analyst job by countries
select
        company_location,
        count(job_id) as job_count
	from ai_job
    where job_title = 'Data Analyst'
	group by company_location
    order by job_count desc
    limit 5;
    
-- 4. Top 5 company locations by number of job postings
select
	company_location,
    count(job_id) as job_count
from 
	ai_job
group by company_location
order by job_count desc
limit 5;

-- 5. Average salary for 'Data Scientist' in specific countries
select 
	company_location,
    round(avg(salary_usd), 1) as avg_salary
from
	ai_job
where job_title = 'Data Analyst'
and company_location in ('China', 'United States' 'Germany', 'United Kingdom', 'France', 'India', 'Canada')
group by company_location
order by avg_salary desc;

-- Skill & Experience Demand
-- 1. Count of top skills for 'Data' related jobs
SELECT 
    'SQL' AS skill_name,  -- Renamed from 'skill_count'
    COUNT(*) AS skill_count -- Renamed from 'skills'
FROM 
    ai_job
WHERE 
    job_title LIKE '%Data%' 
    AND required_skills LIKE '%SQL%'  -- Added % wildcards

UNION ALL

SELECT 
    'Python' AS skill_name,
    COUNT(*) AS skill_count
FROM 
    ai_job
WHERE 
    job_title LIKE '%Data%' 
    AND required_skills LIKE '%Python%' -- Added % wildcards

ORDER BY 
    skill_count desc; -- Changed to the correct alias
    
-- 2. average salary by  experience level
select 
	experience_level,
    round(avg(salary_usd), 1) as avg_salary
from ai_job
where experience_level is not null
group by experience_level
order by avg_salary desc;

-- 3. Most common education level for  positions
select 
	education_required,
    count(job_id) as job_count
From ai_job
where experience_level = 'Entry' 
and education_required is not null
group by education_required
order by job_count desc
limit 1;

-- Company & Market Trends
-- 1. Average Salary by Company Size
select 
	company_size,
    round(avg(salary_usd), 1) as avg_salary,
    count(case when remote_ratio = 100 then 1 end) as fully_remote_jobs
from ai_job
group by company_size
order by avg_salary desc;

-- 2. Trend of job postings over time (by month)
SELECT
    DATE_FORMAT(
        STR_TO_DATE(posting_date, '%d/%m/%Y'),
        '%Y-%m'                                
    ) AS posting_month,
    COUNT(job_id) AS job_count
FROM 
    ai_job
GROUP BY 
    posting_month
ORDER BY 
    posting_month DESC;
	
