-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/iHyz3m
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
--------------------------------------------------------------------------------------------------------------------------------------------
-- DELETE TABLES
-- DROP ALL
DROP TABLE departments, employees, dept_emp, dept_manager, salaries, titles CASCADE;
-- DROP ONE AT A TIME
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE titles;
--------------------------------------------------------------------------------------------------------------------------------------------
-- CREATE TABLES

CREATE TABLE "departments" (
    "dept_no" varchar NOT NULL,
	"dept_name" varchar NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" varchar NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "gender" varchar(1) NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" varchar NOT NULL,
    "dept_no" varchar NOT NULL,
    "from_date" varchar NOT NULL,
    "to_date" date NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_manager" varchar NOT NULL,
    "emp_no" varchar NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" varchar NOT NULL,
    "salary" int NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" varchar NOT NULL,
    "title" varchar NOT NULL,
    "from_date" date NOT NULL,
    "to_date" date NOT NULL
);
--------------------------------------------------------------------------------------------------------------------------------------------
-- CREATE DEPENDENCIES
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_manager" FOREIGN KEY("dept_manager")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");









