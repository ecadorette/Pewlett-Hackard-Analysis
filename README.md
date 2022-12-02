# Pewlett-Hackard-Analysis

## Overview
Hewlett-Packard is anticipating a large number of emplpoyees will retire at the same time. This analysis is to gather data around those employees who will soon be eligible to retire and consider the next generation of senior staff. SQL queries were used to perform the analysis, relying heavily on `GROUP BY` and `WHERE` functions to get the needed data.

## Results
- 70% of retiring employees are senior staff and engineers

  ![Retiring_count](https://user-images.githubusercontent.com/114450503/205224707-726ec767-8cae-4ed0-aa2a-85276b88a2f8.PNG)

- Very few employees qualified for the mentorship-eligibility program

  ![Mentorship_titles](https://user-images.githubusercontent.com/114450503/205224823-fc5ef313-33b5-4356-b56b-ea109bd9aad0.png)
  
- Data provided is limited, there is little insight into employee eligibility outside of birth date

  ![eligibility_data](https://user-images.githubusercontent.com/114450503/205225271-56ae55b0-1abf-4936-881b-e21fcceb841d.png)
  
- Looking at all the data provided, there is very little insight into eligible employees outside of birthdate. Other factors could be helpful with this decision making process, like a tenure column that calculates years employed or even years in the industry. 


## Summary
72, 458 roles will need to be filled as the "silver tsunami" begins to make an impact.

The results of the mentorship_eligibility report show only 2% of the remaining employees are eligible for the mentorship program. Hewlett will have to go back to the drawing board to fill these roles. 

An additional table was provided above to show further insight into the number of employees eligible for the mentorship program, this is concrete evidence that HP will need to broaden their scope of eligible employees. Another query that could be helpful for this analysis would be to see how many employees will likely retire each year. Since the birthdays span from 1952-1955 it is unlikely everyone will retire at once, allowing management more time to come up with the needed replacements. 
