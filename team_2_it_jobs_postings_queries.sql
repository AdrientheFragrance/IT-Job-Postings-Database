USE itjobs;

/* Query 1: valuable_jobs */
CREATE VIEW valuable_jobs AS
SELECT job.job_title, 
	job_salary_type.salary_from_b2b, 
	job_salary_type.salary_to_b2b
    FROM job
JOIN job_salary_type ON job.job_id = job_salary_type.job_id
ORDER BY job_salary_type.salary_to_b2b DESC;

/* Query 2: most_remote_workplaces */
CREATE VIEW most_remote_workplaces AS
SELECT city, country_code, COUNT(remote_workplace) AS remote_workplaces_count
FROM job
JOIN location USING(location_id)
WHERE remote_workplace = 'TRUE'
GROUP BY city, country_code
ORDER BY remote_workplaces_count DESC;

/* Query 3: big_company_cities */
CREATE VIEW big_company_cities AS
SELECT 
    company.company_id, 
    company.company_size_from, 
    company.company_size_to,
    (company.company_size_to - company.company_size_from) AS company_size,
    location.city, 
    location.country_code
FROM company JOIN job ON job.company_id = company.company_id
JOIN location ON location.location_id = job.location_id
WHERE (company.company_size_to - company.company_size_from) >= 50
ORDER BY company_size DESC;

/* Query 4: average_highest_paying_cities */
CREATE VIEW average_highest_paying_cities AS
SELECT city,
       country_code,
       AVG(city_salary_difference) AS city_average_salary
FROM (
    SELECT city,
           country_code,
           salary_to_b2b - salary_from_b2b AS city_salary_difference
    FROM job_salary_type
    JOIN job USING(job_id)
    JOIN location USING(location_id)
) AS subquery
GROUP BY city, country_code
ORDER BY city_average_salary DESC;

/* Query 5: desired_experience */
CREATE VIEW desired_experience AS
SELECT job_title, experience, skill_name, skill_value
FROM job JOIN job_skills USING (job_id) JOIN skills USING (skill_id)
WHERE skill_value = 4
ORDER BY experience;





