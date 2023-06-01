/* select total cases */
SELECT SUM(New_Cases) AS Total_Cases
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';

/* select total deaths */
SELECT SUM(New_Deaths) AS Total_Deaths
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';

/* select total recovered */
SELECT SUM(New_Recovered) AS Total_Recovered
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';

/* select recovered rate */
SELECT AVG(Case_Recovered_Rate) AS Recovered_Rate
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';

/* select fatality rate */
SELECT AVG(Case_Fatality_Rate) AS Fatality_Rate
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';

/*select growth factor of new cases and new deaths based on date*/
SELECT Date, Growth_Factor_of_New_Cases, Growth_Factor_of_New_Deaths
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';

/* Select sum of new cases of each province*/
SELECT Province, SUM(New_Cases) AS Total_Cases
FROM `covid_19_indonesia`
WHERE Province IS NOT NULL
GROUP BY Province
ORDER BY Total_Cases DESC;

/* Select all new cases, cases recovered, and new deaths based on date*/
SELECT Date, New_Cases, New_Recovered, New_Deaths
FROM `covid_19_indonesia`
WHERE Location_Level = 'Country';