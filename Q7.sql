SELECT
    JobTitle,
    ROUND(COUNT(CASE WHEN gender = 'Male' THEN 1 END) * 100.0 / COUNT(*), 2) || '%' AS MalePercentage,
    ROUND(COUNT(CASE WHEN gender = 'Female' THEN 1 END) * 100.0 / COUNT(*), 2) || '%' AS FemalePercentage
FROM GlassdoorGender
GROUP BY JobTitle;




