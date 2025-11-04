# AI-Job-Market-Analysis-Project
This repository contains a comprehensive analysis of the AI job market, based on a provided dataset of job postings. Extract key insights related to salary benchmarks, remote work trends, required skills, and company-specific patterns.

## Project Overview
The goal of this analysis  dataset of AI job postings and answer critical questions for job seekers, employers, and market analysts. The queries are structured to move from high-level salary overviews to more granular insights into skill requirements and market trends.

## Data Source
File: ai_job_dataset.csv

## Data Cleaning & Preparation
Promoted Header

Change the data type of all column

Replace the Acronym with full name in columns ‘Experience level’, ‘Employment Type’ and ‘Company Size’.

Column removed: “application_deadline", "job_description_length", "benefits_score”.

Split column "required_skills” by delimiter.

Trimmed "required_skills” to remove the space after splitting column.


## Analysis Breakdown
The analysis is divided into logical sections, each targeting a specific aspect of the job market.

### 1. Market Overview
  The dashboard provides a high-level snapshot of the market based on 15,000 job postings:
Average Salary: $115,190

Average Experience Required: 6 years

Geographic Spread: 20 Countries 

Company Pool: 16 

This data establishes the AI sector as a mature field, distinct from an entry-level market, with high compensation reflecting a high demand for skilled professionals.


### 2. Compensation Analysis
Salaries in the AI sector are competitive, with surprisingly minor variations across the top 5 industries.

Top 5 Industries by Average Salary:   

Consulting: $117,004.2

Media: $116,680.7

Manufacturing: $116,522.1

Education: $115,981.6

Technology: $115,855.2


### 3. Average Salary by Experience Level
Compensation is far more dependent on experience level. The data shows clear and significant financial progression:

Executive: $189,395.4

Senior: $121,211.0

Mid: $87,785.6

Entry: $63,101.5


### 4. Role & Skill Requirements
The analysis of the top 10 jobs and required skills highlights a market dominated by machine learning.

Top Required Skills:

Python: The clear-cut, dominant skill required.

SQL: The second most required skill, emphasizing the importance of data retrieval and management.

ML Frameworks: TensorFlow and PyTorch are both highly sought.

Big Data & Engineering: Scala and Spark are essential.

Visualization & Stats: Tableau and R complete the toolkit.

### 5. Salary Benchmark

Highest Volume: "Machine Learning Researcher" (808 jobs) and "AI Software Engineer" (784 jobs) are the most common roles.

Highest Average Salary: "Machine Learning Engineer" ($118,935) and "Head of AI" ($118,764) show the highest average pay.

Highest Potential: "AI Architect" ($398k Max), "Machine Learning Researcher" ($399k Max), and "AI Research Scientist" ($394k Max) have the highest maximum salaries, indicating exceptionally high compensation for elite-level individual contributors and architects.

### 6. Hiring Trends & Geography
The "Job posting per Month" chart reveals the single most critical finding for strategic planning:

Hiring activity is not uniform. It begins high in January (~2.8k posts), peaks in March (~3k posts), and then declines sharply by over 50% from April to June.

For the entire second half of the year (June-December), hiring remains low and flat at approximately 1.2k posts per month.

Geographically, the "Jobs by Company Location" map shows that opportunities are predominantly concentrated in the United States and Europe.

## Key Insights
High-Experience, High-Salary Market: The AI job market is mature. The overall average salary is high at $115,190, and the average experience required is 6 years. This suggests that employers are primarily seeking experienced professionals, not entry-level trainees.

Salary Scales Dramatically with Seniority: There are significant pay jumps between experience levels. The leap from Senior ($121k) to Executive ($189k) is particularly large (a ~56% increase), indicating a leadership and strategic AI roles.

Python & SQL are the Foundation: Python and SQL are the two most-required skills by a significant margin. This pair forms the "barrier to entry." Specialized skills like TensorFlow, PyTorch, Spark, and Tableau follow, indicating key areas of specialization (Deep Learning, Big Data, and BI).

Industry Pay is Highly Competitive: The average salaries across the top 5 industries (Consulting, Media, Manufacturing, etc.) are extremely close. The difference between the highest (Consulting, $117,004) and the fifth-highest (Technology, $115,855) is negligible, suggesting AI talent is valued similarly across these diverse sectors.

Market is Geographically Concentrated: The vast majority of jobs are clustered in North America and Europe, with a secondary hub in Asia.

## Recommendations
Master the Core, Then Specialize: Focus first on achieving deep fluency in Python and SQL. Your portfolio must prominently feature both. Once mastered, choose a high-demand specialization like TensorFlow (Deep Learning) or Spark (Big Data Engineering) to move into higher-paying roles.

Time Your Job Hunt Strategically: Concentrate your job search and networking efforts in Q1 (January-March). Update your resume in December and be ready to apply heavily during this peak season.

Aim for Architect & Leadership Roles: The data shows the most significant financial growth is in leadership. Once you have senior-level experience (5-7 years), actively pursue roles like "AI Architect" or "Head of AI," as these positions have the highest earning potential.



