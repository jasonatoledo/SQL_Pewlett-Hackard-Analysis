# SQL_Pewlett-Hackard-Analysis

## Overview

The purpose of the Pewlett-Hackard analysis is to identify the number of retiring employees by title to better understand the number of employees that will soon leave the company. The data is gathered via SQL through pgAdmin. I created several databases from csv files as well as the relationships between the entities. For tohe challenge, I was required to make a retirement table, unique titles table, and provide the counts and mentor eligibility for each department.

## Results

- The data contains 300,024 employee records with a total of a total of 9 departments in the analysis

- There are 133,776 rows in the retirements title table before runnning a distinct count on function, thus the table contains duplicate employee numbers and names but it is because the employee may have had multiple roles with the company

- There is a total of 7 different titles within the company but the titles table contains 443,308 total titles because an employee may have switched roles during their career at some point in time

- The mentorship eligibility table contains 1,549 rows of employees when pulling the distinct count of employees who are still currently employeed

## Summary

- Number of roles to be filled due to the "silver tsunami"

The total number of roles to be filled is 90,398.

- Are there enough qualified, retirement-ready employees in the departments to menntor the next gen employees?

For most departments yes, but the assistant engineer department only has 1,761 and managers only have a measly 2 employees, which may not be enough to mentor a large incoming workforce.

Two tables that could help this analysis further:

1) A table containing the retiring employee count by department

2) A table containing the number of relatively new employees, perhaps within the past 2 years to see how many need mentorship
