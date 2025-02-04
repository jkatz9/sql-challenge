drop table if exists departments cascade;
drop table if exists titles cascade;
drop table if exists employees cascade;
drop table if exists dept_emp cascade;
drop table if exists dept_manager cascade;
drop table if exists salaries cascade;

CREATE TABLE "departments" (
    "dept_no" varchar primary key  NOT NULL,
    "dept_name" varchar NOT NULL
  
);

CREATE TABLE "titles" (
    "title_id" varchar primary key  NOT NULL,
    "title" varchar   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int  primary key NOT NULL, 
    "emp_title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    foreign key ("emp_title_id") references "titles" ("title_id")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL,
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    primary key ("emp_no","dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL,
    FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    primary key ("emp_no","dept_no")
);

CREATE TABLE "salaries" (
    "emp_no" int primary key  NOT NULL,
    "salary" int   NOT NULL,
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);



