# Employee-Database-A-Mystery-in-Two-Parts
## Look at end of page to see SQL database being imported and used in Pandas

Data Modeling, Data Engineering and Data Analysis-PostgreSQL

This project showcases the use and power of creating SQL databases and queries.

### Data
There are 6 data sets shown below:

<img width="774" alt="Databases" src="https://user-images.githubusercontent.com/46534353/60121210-6b421880-9737-11e9-9728-b7ac5592e7ee.png">


### Data Modeling
After inspection of the CSVs a basic sketch of the ERD of the tables is created
<img width="774" alt="Data Modeling-ERD Diagram" src="https://user-images.githubusercontent.com/46534353/60121324-a7757900-9737-11e9-919d-05ab96c0e5a8.png">


### Data Engineering
Using the ERD, the table schema for each of the six CSV files is created including thedata types, primary keys, foreign keys, and other constraints. All 6 csv files are imported into corresponding SQL table.

https://github.com/amitmals/Employee-Database-A-Mystery-in-Two-Parts/blob/master/SQL-Amit%20Malik-06222019-Table.sql

### Data Analysis
The following queries are implemented for Data Analysis

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4.List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

https://github.com/amitmals/Employee-Database-A-Mystery-in-Two-Parts/blob/master/SQL-Amit%20Malik-06222019-Queries.sql

## SQL database being imported and used in Pandas
The SQL databases are imported into Pandas
Then using the power of Pandas and Matplotlib we can create wonderful graphs

<img width="500" alt="Title vs Average Salary" src="https://user-images.githubusercontent.com/46534353/60135669-1a421c80-9757-11e9-8dec-66b91624aae1.png">

https://github.com/amitmals/Employee-Database-A-Mystery-in-Two-Parts/blob/master/postgresSQL_pandas.ipynb
