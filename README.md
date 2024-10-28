# sql-challenge
UCB Data Analytics-Challenge 9

CHALLENGE PURPOSE: In this challenge, use of ERD creation and use of SQL writing is demonstrated.

# Technologies Used: QuickDB, SQL, python ( to stadardize a column name ) 

# Code
Source Code
     a) Data folder comprised of
          - the provided data sets: as noted in the Data Dictoinary
          - titles_csv column rename.csv = used to standardize a column name
          - ERD Diagram image
          - image= data dictinoary snapshot
     b) EmployeeSQL
          - assignment_only_script = SQL to complete the assignment
          - entire_script = ERD table sql and SQL to complete the assignment
          
# Data Dictionary and ERD Relationships 
 ![image](https://github.com/user-attachments/assets/4a671a2e-0cd5-4e0d-a62c-dbba9d001911)





# Explanation of Relationships:
- Relationships
     * employees and salaries: One-to-many relationship. An employee can have many salary records over time.
     * employees and titles: One-to-many relationship. An employee can have many titles over time.
     * employees and dept_emp: Many-to-many relationship. An employee can belong to many departments, and a department can have many employees.
     * departments and dept_emp: Many-to-many relationship. A department can have many employees, and an employee can belong to many departments.
     * departments and dept_manager: One-to-many relationship. A department can have only one manager at a time.
     * employees and dept_manager: Many-to-one relationship. An employee can be a manager of many departments.  

# Resources
Resources utilized for support with debugging, and clarifications of code: Xpert Learning, quickdb help file and Gemini AI where needed.
