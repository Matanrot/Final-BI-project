SELECT
    PerfEval,
    ROUND(AVG(Bonus), 2) AS AverageBonus,
    ROUND((AVG(Bonus) - LAG(AVG(Bonus)) OVER (ORDER BY PerfEval)) / LAG(AVG(Bonus)) OVER (ORDER BY PerfEval) * 100, 2) || '%' AS BonusIncreasePercentage
FROM GlassdoorGender
GROUP BY PerfEval;


