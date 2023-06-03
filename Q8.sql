SELECT
    gender,
    seniority,
    ROUND(AVG(Salary), 2) AS AverageSalary,
    ROUND((AVG(Salary) - LAG(AVG(Salary)) OVER (PARTITION BY gender ORDER BY seniority)) / LAG(AVG(Salary)) OVER (PARTITION BY gender ORDER BY seniority) * 100, 2) || '%' AS SalaryIncreasePercentage,
    CASE WHEN seniority > LAG(seniority) OVER (PARTITION BY gender ORDER BY seniority) AND AVG(Salary) < LAG(AVG(Salary)) OVER (PARTITION BY gender ORDER BY seniority) THEN 'unusual observation' ELSE NULL END AS Observation
FROM GlassdoorGender
GROUP BY gender, seniority;




