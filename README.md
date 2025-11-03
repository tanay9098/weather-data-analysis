# Weather Data Analysis

## 1. Introduction
This project provides a comprehensive analysis of the weather pattern collected from a particular weather station. 

## 2.Data Source
The data for this project was obtained from the [linkedin](https://www.linkedin.com/feed/update/urn:li:activity:7371233708634419200/) post of [Mary Knoeferl](https://www.linkedin.com/in/mary-knoeferl/). 

## 3.Data Cleaning and Transformation
The raw data underwent several crucial cleaning and transformation steps to ensure accuracy, consistency, and suitability for analysis. This included:

**Handling outliers:** An additional column has been added by the name of *is_extremeWeather* to identify outliers having extreme temperature differences of >25.

**Handling Negative Values:** Rows where precipitation denoted by *precipitation_in* is *negative* has been corrected. Rows where wind speed denoted by *wspd_mph* is *negative* has been corrected.


**Swapping values:** To enable proper analysis, values of maximum and minimum temperature denoted by *tmax_f* and *tmin_f* has been swapped wherever values were placed incorrectly.

## 4. Visualization and Insights

**Temperature Variation Over Time**

![1](./images/image.png)

This line chart tracks the daily maximum and minimum temperatures over the recorded time period.The blue line shows *tmax_f* (maximum temperature).The orange line shows *tmin_f* (minimum temperature).can observe fluctuations in temperature, indicating day-to-day weather variability. Large gaps between the two lines mean higher daily temperature swings, possibly due to dry air or desert-like conditions.Negative values (below 0°F) might represent data from very cold regions or winter months.

**Distribution of Daily Precipitation**

![2](./images/image1.png)

This histogram shows how often certain precipitation levels occurred. Each bar represents a range of rainfall amounts (inches) and the count of days that fell in that range. Most days had light to moderate precipitation (0.0–0.9 inches).Very few days show heavy rainfall (>1 inch).The blue curve smooths out the trend, showing the general pattern of rainfall distribution. Overall it gives a quick idea of how rainy or dry the dataset’s location is important for climate analysis or agricultural decisions.

**Temperature Vs Wind Speed**

![3](./images/image2.png)

A scatter plot comparing *wspd_mph* (wind speed) with *tmax_f* (maximum temperature).
Each dot represents one day’s record. The dots are scattered randomly, showing little to no clear correlation between higher temperatures and stronger winds. This suggests wind speed was independent of temperature in your dataset, possibly influenced more by atmospheric pressure than temperature.

**Extreme Heat Vs Cold Days**

![4](./images/image3.png)

This bar chart compares the count of:

Extreme Heat Days (*tmax_f > 90°F*)

Extreme Cold Days (*tmin_f < 32°F*)

There are far more extreme cold days than extreme heat days. This suggests the dataset likely covers a cold or temperate region.





