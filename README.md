# AI-Job-Market-SQL-Analysis-Project
This repository contains a comprehensive SQL-based analysis of the AI job market, based on a provided dataset of job postings. The SQL script is designed to extract key insights related to salary benchmarks, remote work trends, required skills, and company-specific patterns.

## Project Overview
The goal of this analysis is to leverage SQL to query a dataset of AI job postings and answer critical questions for job seekers, employers, and market analysts. The queries are structured to move from high-level salary overviews to more granular insights into skill requirements and market trends.

## Data Source
File: ai_job_dataset.csv
Assumed Table Name: ai_job (as referenced in SQL Script.sql)

## SQL Analysis Breakdown
The analysis script is divided into logical sections, each targeting a specific aspect of the job market.

### 1. Salary Benchmarking
  This section focuses on understanding compensation trends across various roles and industries.
  
  Top 10 Job Titles: Identifies the 10 most frequent job titles and calculates their job count, average, minimum, and maximum salary (salary_usd).
  
  Salary by Experience: Group jobs by experience_level to find the average salary and job count for each, providing a clear career progression view.
  
  Top Paying Industries: Calculates the average salary by industry to identify the top 5 most lucrative sectors in AI.

### 2. Remote Work & Location Analysis
This section investigates the prevalence of remote work and geographical trends.
  Work Setting Distribution: Categorizes jobs based on remote_ratio (Fully Remote, Hybrid, On-site) and calculates the count and percentage of total jobs for each category.
  
  Top 10 Job Locations: Aggregates job postings by company_location to find the top 10 countries with the most AI job opportunities.
  
  Salary Comparison for 'Data Analyst' by Remote Ratio.
  
  Data Analyst job by countries.
  
  Top 5 company locations by number of job postings.
  
  Average salary for 'Data Scientist' in specific countries.

### 3. Skill & Experience Demand
This section dives into the specific qualifications employers are seeking.
  Top skills for 'Data' related jobs.
  
  Average salary by  experience level.
  
  Most common education level for Entry  positions.

### 4. Company & Market Trends
This section analyzes the data from a corporate perspective.
  Average Salary by Company Size.
  
  Trend of job postings over time (by month)
