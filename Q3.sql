SELECT Education,
       AVG(Salary) AS Avg_Salary,
       AVG(CASE WHEN Gender = 'Male' THEN Salary END) AS Avg_Male_Salary,
       AVG(CASE WHEN Gender = 'Female' THEN Salary END) AS Avg_Female_Salary,
       AVG(CASE WHEN Gender = 'Male' THEN Salary END) - AVG(CASE WHEN Gender = 'Female' THEN Salary END) AS Wage_Gap
FROM GlassdoorGender
GROUP BY Education;
