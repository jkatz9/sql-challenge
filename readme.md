SQL Challenge
This project involves creating and managing a database for employee data. The database schema includes tables for departments, titles, employees, department-employee relationships, department managers, and salaries. The project also includes SQL queries to extract specific information from the database.

Project Structure
Database Schema
The database schema is defined in schema.sql. It includes the following tables:

departments: Stores department information.
titles: Stores job titles.
employees: Stores employee information.
dept_emp: Stores the relationship between employees and departments.
dept_manager: Stores department manager information.
salaries: Stores employee salary information.
Schema Definition
Importing Data
The import.sh script is used to import data from CSV files into the database. The script applies the schema and then imports each CSV file into the corresponding table.

Usage
SQL Queries
The queries.sql file contains various SQL queries to extract specific information from the database. Some examples include:

Listing each employee in the Sales and Development departments.
Counting the frequency of employee last names.
Listing employees hired in 1986.
Listing department managers.
Example Queries
License
This project is licensed under the MIT License. See the LICENSE file for details.
