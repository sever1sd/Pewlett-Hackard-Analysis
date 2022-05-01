# Pewlett-Hackard-Analysis
## Overview
The purpose of this exercise was to conduct an analysis on existing people data for Pewlett-Hackard in order to identify retirement eligible populations. This data is critical to future strategic planning in order to better prepare for the 'silver tsunami,' in which large groups of older employees are expected to retire.

## The Analysis
The analysis was conducted using PostgreSQL within the software tool pgAdmin. Data was sorted, aggregated, and exported using pgAdmin.

The criteria for "retirement eligible" was identified as any employee whose birth date falls within the years fo 1952 to 1955. 

Additionally, employee eligibility for a mentorship program. Only active employees were considered and their most recent job data was in scope. 

## Results

The following table shows the results of the title level analysis:

![alt text](https://github.com/sever1sd/Pewlett-Hackard-Analysis/blob/e516126be383cbbc95d7ce8b9c398542278d7436/Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/retiring_titles.png)

**Notes on this table:
1. The largest populations of employees leaving are Senior Engineer and Senior Staff employees
2. Managers do not seem to be retirement elgibile

![alt text](https://github.com/sever1sd/Pewlett-Hackard-Analysis/blob/4b4595fb7b009c344f93d202ec6da399a236418f/Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/me_list.png)

**Notes on this table (this table is partial data):
1. There are a large amount of employees eligible for the mentorship program (N = 1549)
2. Employees who are eligible for this program are generally not eligible for retirement, allowing time to skill up junior employees

## Summary

The number of roles that will need to be filled will be significant. If all retirement eligible employees retire at around the same time frame, there will be well over 72,000 positions needing to be filled. This could be a good opportunity to steamline workflows.

Additionally, there may be some risk in the availability of mentorship eligible employees. While there is strong representation in the core and senior levels of the Engineer and Staff roles, there is a notable lack of eligible employees in Assistant Engineer and Technique Leader roles. 

![alt text](https://github.com/sever1sd/Pewlett-Hackard-Analysis/blob/b67569eaeea7525a175de5687c17ecc0f036a09f/Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/mentorship_eligibility.png)

Further, the available mentorship eligible employees is not evenly spread across the departments. This could cause some gaps in department skill and availability to train up junior employees. It's recommended to address these issues by spreading out eligible employees across departments and job to better educate younger employees.

![alt text](https://github.com/sever1sd/Pewlett-Hackard-Analysis/blob/b67569eaeea7525a175de5687c17ecc0f036a09f/Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/dept%20mentorship.png)