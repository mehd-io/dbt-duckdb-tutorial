{{ config(materialized='external', location='output/air_quality_ranking.csv', format='csv')}}
SELECT 
    city, 
    year, 
    CASE
        WHEN AVG(pm25_concentration) <= 10 AND AVG(pm10_concentration) <= 20 AND AVG(no2_concentration) <= 40 THEN 'Good'
        WHEN AVG(pm25_concentration) > 10 AND AVG(pm10_concentration) > 20 AND AVG(no2_concentration) > 40 THEN 'Poor'
        ELSE 'Moderate'
    END as air_quality_rating
FROM 
    {{ source('external_source', 'who_ambient_air_quality_database_version_v6_april_2023') }}
GROUP BY 
    city, 
    year
ORDER BY 
    city, 
    year
