{{ config(materialized = 'external', location = 'output/berlin_air_quality.csv', format = 'csv') }}
SELECT
    year, AVG(pm25_concentration) AS avg_pm25, AVG(pm10_concentration) AS avg_pm10, AVG(no2_concentration) AS avg_no2 
FROM {{ source('external_source', 'who_ambient_air_quality_database_version_v6_april_2023') }}
    WHERE
        city = 'Berlin' 
GROUP BY 
    year 
ORDER BY 
    year DESC
