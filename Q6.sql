SELECT dept,
       Require_level,
       AVG(CASE WHEN Gender = 'Male' THEN Salary END) AS Avg_Male_Salary,
       AVG(CASE WHEN Gender = 'Female' THEN Salary END) AS Avg_Female_Salary,
       AVG(CASE WHEN Gender = 'Male' THEN Salary END) - AVG(CASE WHEN Gender = 'Female' THEN Salary END) AS Salary_Difference,
       CASE WHEN AVG(CASE WHEN Gender = 'Male' THEN Salary END) IS NULL OR AVG(CASE WHEN Gender = 'Female' THEN Salary END) IS NULL THEN NULL
            WHEN AVG(CASE WHEN Gender = 'Male' THEN Salary END) > AVG(CASE WHEN Gender = 'Female' THEN Salary END) THEN 'Men'
            ELSE 'Women' END AS Higher_Average_Salary
FROM GlassdoorGender
GROUP BY dept, Require_level;
