-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tbqZYb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" int(pk)   NOT NULL,
    "dept_name" varchar   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int(pk)(fk)   NOT NULL,
    "dept_no" int(pk)(fk)   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" int(pk)(fk)   NOT NULL,
    "emp_no" int(pk)(fk)   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int(pk)   NOT NULL,
    "emp_title_id" int(fk)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" enum   NOT NULL,
    "hire_date" date   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int(pk)   NOT NULL,
    "salary" decimal   NOT NULL
);

CREATE TABLE "title" (
    "emp_title_id" int(pk)   NOT NULL,
    "title" varchar   NOT NULL
);

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_emp" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "title" ADD CONSTRAINT "fk_title_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "employees" ("emp_title_id");

