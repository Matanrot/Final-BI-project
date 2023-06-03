SELECT
    dept,
    ROUND(AVG(Salary), 2) AS AverageSalary,
    ROUND((AVG(Salary) - LAG(AVG(Salary)) OVER (ORDER BY dept, seniority)) / LAG(AVG(Salary)) OVER (ORDER BY dept, seniority) * 100, 2) || '%' AS IncreasePercentage
FROM GlassdoorGender
GROUP BY dept
ORDER BY dept;






