SELECT Require_level,
       JobTitle,
       AVG(Salary) AS Avg_Salary,
       AVG(Salary) OVER (PARTITION BY JobTitle ORDER BY Require_level) AS Avg_Salary_By_Require_Level,
       (AVG(Salary) - LAG(AVG(Salary)) OVER (PARTITION BY JobTitle ORDER BY Require_level)) AS Salary_Increase
FROM GlassdoorGender
GROUP BY Require_level, JobTitle;

