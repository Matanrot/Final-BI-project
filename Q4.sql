SELECT dept,
       Seniority,
       AVG(Salary) AS Avg_Salary,
       AVG(Salary) OVER (PARTITION BY dept ORDER BY Seniority) AS Avg_Salary_By_Seniority,
       (AVG(Salary) - LAG(AVG(Salary)) OVER (PARTITION BY dept ORDER BY Seniority)) AS Salary_Increase
FROM GlassdoorGender
GROUP BY dept, Seniority;
