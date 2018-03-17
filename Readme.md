**
Some of the column names have been altered in the CSV files for them to be recognized by R and python. The spaces have been replaced by under scores.
**

Question 1:

The analysis for Q1 has been performed using R. Fot this, an interactive map is created which indicates the locations of Gradens have been indicated by green circles. The data contains the locations of gradens all over New York City and we can see that there are a lot of gardens in Brooklyn and Queens as compared to Manhattan.
Furter, markers with different colors have been mapped. The colors of the markers have been decided based on the box plot values which represent the quartile values and the mean value. The blue marker represents the property which has the square feet rate of less than equal to $150. Orange marker represents the properties which has the average square feet rate of less than equal to $250 and all rates above it are marked with red markers.
The second dataset which has the property features only has data of Manhattan. Further it can be observed that most of the properties in Manhatten are in the average rate range. But as me move towards uptown Manhattan the rate per square feet is mostly in the low category marked with blue colors.
Additionally, in the downtown Manhattan area most of the properties have high average rental property rates per square feet. The area near the garden mostly has medium rated rental properties maked with orange colors. There are a lot of gardens betwwen the 2nd street and 11th street on the east side and rental properties have rates in the mean range maked with orange markers.
The visualization can be seen in the Q1-solved.html file. The R code can be seen in the Q-1-code file.


Question 2:
From the analysis performed using Python for this part, it has been observed that park cemetry etc Manhattan is the most expensive Neighborhood Tabulation Area based on the average property rate per Square Feet. When compared by the Manhattan condomium property value per square feet the Midtown CBD has the highest rates. Also, park cemetry etc Manhattan has the highest Manhattan condomium property gross income when compares against NTA.
The python code coan be seen in the Q-2-code.ipynb file which also contains the visualizations of the results.


Question 3:
The analysis for this part has been performed in Question 1 analysis where it is observed that the area near the garden mostly has medium rented property rates maked with orange colors. There are a lot of gardens between the 2nd street and 11th street on the east side and rental properties have rates in the mean range maked with orange markers.
Further for property market value analysis has been performed it it clearly shows that the properties near gardens have low and medium market values represented by blue and orange colors respectively. These categories are represented by 3 colors based on the queatile and mean values of the market values of the properties. Red marker represents high market value, orange represents medium marker value and blue represents low market values of properties. Green colored circles represent the garden locations in NYC. Again in Uptown Manhattan area the property market value are low and the properties near the Washington Square park and Central park have high market values. Overall the market values in other areas of Manhattan ae mostly in the average range.
The R code for this can be seen in the Q-1-code file and Q-2-code file. The visualizations can be seen in the Q1-solved.html file and Q3-solved-Market Value.html file.