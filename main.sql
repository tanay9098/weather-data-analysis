/*checking for any column with duplicate weather id*/
SELECT weather_id, COUNT(*)
FROM daily_weather
GROUP BY weather_id
HAVING COUNT(*) > 1;


/* updating negative values from precipitation*/
UPDATE daily_weather
SET precipitation_in = ABS(precipitation_in)
WHERE precipitation_in < 0;

/* updating negative values from wind speed*/
UPDATE daily_weather
SET wspd_mph = ABS(wspd_mph)
WHERE wspd_mph < 0;

/*Swapping minimum and maximum temperature*/
UPDATE daily_weather
SET tmax_f = CASE WHEN tmin_f > tmax_f THEN tmin_f ELSE tmax_f END,
    tmin_f = CASE WHEN tmin_f > tmax_f THEN tmax_f ELSE tmin_f END;
	
/*Additional column is_extremeWeather added*/
ALTER TABLE daily_weather ADD COLUMN is_extremeWeather INTEGER DEFAULT 0;

/*Checking extreme temperature*/
UPDATE daily_weather
SET is_extremeWeather = 1
WHERE (tmax_f-tmin_f)>25;


DELETE FROM daily_weather
WHERE is_extremeWeather = 1;

select * from daily_weather;

/*No of days for which weather condition has been recorded*/
SELECT COUNT(*) AS total_no_of_days  from daily_weather;



/*Highest temperature recorded */
SELECT date, tmax_f
FROM daily_weather
ORDER BY tmax_f DESC
LIMIT 1;






/*Lowest temperature recorded */
SELECT date, tmin_f
FROM daily_weather
ORDER BY tmin_f ASC
LIMIT 1;










/*No of days for extreme heat */
SELECT COUNT(tmax_f) AS extreme_heat  from daily_weather WHERE(tmax_f>90);




/*No of days for extreme cold */
SELECT COUNT(tmin_f) AS extreme_cold  from daily_weather WHERE(tmin_f<32);



