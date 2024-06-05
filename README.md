# 💻 IT Job Postings Database
A database designed by a team of Information Science students taking INST 327 at the University of Maryland


# 🐬 Introduction
My team aimed to research which qualities are the most preferable for landing an IT job.

We derived our data from a Kaggle dataset, [Polish IT Job Postings](https://www.kaggle.com/datasets/kriegsmaschine/polish-it-job-board-data-from-2022/data), created by a Polish startup company that lists IT job postings for different European countries from February of 2022 to November of 2022. With 35 columns, some of the specific ones of interest are job title, workplace, salary, and experience. To focus our scope of interest, some repetitive and discriminatory columns are excluded. In representing our chosen columns, we developed a database in MySQLWorkbench using Structured Query Language (SQL) that showcases the specific relationships these entities and attributes have.


# 🐬 Database Description 
This database is meant to serve as a tool for job applicants to find jobs that suit their qualifications and interests, consisting of 7 tables and a sample data size of 15 job postings. Each job posting retains information organized in such a way best represented by our entity relationship diagram below.

### ERD
<p align="left"> 
  <kbd>
    <a href="" target="_blank">
<img src= "https://raw.githubusercontent.com/AdrientheFragrance/IT-Job-Postings-Database/main/IT_Job_Postings_ERD_image.png">>
  </a>
  </kbd>
</p>


# 🐬 Sample Data
The original dataset had over 37,000 rows of data, mostly with job listings in Poland and England. Between 1 and 2 percent of the rows corresponded to postings based in the United States, so in narrowing down our rows to under 500 rows, we chose only listings based in the United States which narrowed the dataset down to roughly 600 rows. We got rid of job postings with currencies other than the US dollar and those with extensive null values to populate our database with the strongest rows. Of these rows, 15 were chosen that best demonstrated a variety of desired job information. Our final sample data consists of these 15 rows and all 25 columns shown in the entity relationship diagram.


# 🐬 Views and Queries

Query Name | Join x4 | Filter x3 | Aggregate x2 | Linking x1 | Subquery x1
--- | --- | --- | --- |--- |---
Q1: valuable_jobs | x |  |  |  |  
Q2: marketable_skills | x | x | x |  |  
Q3: big_company_cities | x | x |  |  |  
Q4: average_highest_paying_cities | x |  | x | x | x
Q5: desired_experience_levels | x | x |  |  |  

The following list describes what each query displays:
* Query 1: Creates a view that shows the highest paying B2B jobs, ranked from highest to lowest 
paying jobs. 
* Query 2: Creates a view that displays cities with the most remote job opportunities, ranked from highest to lowest remote position count. 
* Query 3: Creates a view that lists companies from highest to lowest company size.
* Query 4: Creates a view that depicts the average salaries for B2B jobs, ranking from highest to lowest average salary.
* Query 5: Creates a view of the most valued skills and experience level for each job position, ordered from highest to lowest value.


# 🐬 Future Work

Some potential future additions to this project include expanding the database to include all countries and currencies. In doing so, our scope will broaden to include IT job postings abroad for any applicants looking to apply to such jobs. That means creating more views with information relevant to job applicants abroad, and more table relationships that can be drawn out of different country data. For example, viewing the top skills and experience valued in each country (if not all, then any select few).

Another future implementation could be adding the currency exchange rate alongside the job salary and currency to help job applicants assess their options based on their desired pay and the current job market. Our team also discussed the possibility of utilizing this database as the framework for a job finding website, such as the website the original creator of the database used. The website would have a very simplified version of job information, but users would be able to see a variety of data relationships in order to satisfy their information seeking needs. In other words, the views we create would provide specific job posting statistics that the user can search through.


### Website Preview
<p align="center"> 
  <kbd>
    <a href="" target="_blank"><img src="images/preview.jpg">
  </a>
  </kbd>
</p>


## Credits 📄

	Collaborators:
		Adrien Rozario, Maya Patel, Samiha Naser, Illia Polishchuk, Andy Yang

	Data:
		Just join it. Job Offers IT - Just Join IT. (n.d.-b), https://justjoin.it/ 
    RSKriegs. “Polish It Job Board Data from 2022.” Kaggle, 20 Nov. 2022, www.kaggle.com/datasets/kriegsmaschine/polish-it-job-board-data-from-2022/data
