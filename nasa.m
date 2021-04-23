%1. 

temp =   [53,   75,   57,   58,   63,   70,   70]   
Failures  = [3,    2,    1,    1,    1,    1,    1]   

fullTemp = [53,   75,   57,   58,   63,   70,   70,   66,   67,   67,   67,   68,   69,   70,   70,   72,   73,   75,   76,   76,   78,   79,   80,   81]
fullFailures = [3,    2,    1,    1,    1,    1,    1,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,  0]    

plot(temp,Failures)

fitlm(temp, Failures)

plot(fullTemp,fullFailures)

fitlm(fullTemp, fullFailures)

%Linear regression model for part (a):
    %y ~ 1 + x1

%Estimated Coefficients:
 %                  Estimate        SE        tStat      pValue 
  %                 _________    ________    ________    _______

   % (Intercept)       3.0465      2.6693      1.1413    0.30544
    %x1             -0.025393    0.041603    -0.61037    0.56829
    
    
%Linear regression model for part (b):
 %   y ~ 1 + x1

%Estimated Coefficients:
 %                  Estimate        SE        tStat      pValue  
  %                 _________    ________    _______    _________

   % (Intercept)        4.675      1.3271     3.5228    0.0019162
    %x1             -0.060833    0.018862    -3.2252    0.0038939
    
    %^^code for the problem in MATLAB, answers below: 


%Part (a) answer : The line of best fit, according to the least-squares
%regression model, is the line y = -0.025x + 3.05, where y is the number of
%O-ring failures and x is the temperature. When the O-ring temperature is
%31, we can expect -0.025(31) + 3.05 = 2.275. This means we can expect
%approximately 2 O-ring failures when the temperature is 31 degrees F. In
%order to see when we would have 4 O-ring failures, we can let y = 4 =
%-0.025x + 3.05, x = 0.95/(-0.025) = -38 degrees F.

%Part (b) answer : The line of best fit, according to the least-squares
%regression model, is the linke y = -0.06x + 4.675, where y is the number
%of O-ring failures and x is the temperature. When the O-ring teperature is
%31, we can predict that there will be -0.06(31) + 4.675 = 2.815, which is
%approximately 3 O-ring failures that we can expect at that temperature.
%For the temperature that will cause the number of failures to exceed
%four, we can plug in 4 as the y-value, giving us: 4 = -0.06x + 4.675,
%which ends up giving us x = 11.25 degrees F. 

%Part (c) answer : The method in part (b) in which we used all of the data
%points given was the most accurate method because we were able to use more
%data. Typcially, more data means more accurate prediction models,
%especially in applications in machine learning and data science. To
%improve the data analysis, it might be good to retrieve even more data
%whether its doing more tests or actual launches as well. 

%2. 
%Part (a) answer : Based on the least squares best-fit line given, for a
%person who was able to lower their BMI by 1 kg/m^2, we can expect a
%systolic blood pressure decrease of 0.2047 mm Hg based on the slope of the
%least squares line of best fit. 

%Part (b) answer : This time, we have multivariate regression, so we will
%let S be the matrix for systolic pressure. Our predictor matrix X will
%contain a column of 1's for a constant term, and 2 columns for BMI and
%Age, each.


S = [125, 121, 120, 132, 152]
X = [1, 1, 1, 1, 1; 50, 47, 46, 28, 50; 27.9, 29.4, 25.35, 25.8, 26.9]

mvregress(X.', S.')

%ans =

  %171.6810
   % 0.2230
   %-1.9038
   
%Part (b) answer (continued) : We can see now that our new linear
%regression model, accounting for the confounding variable of age, is: 
%S = 171.68 - 1.904B + 0.223A. 

%Part (c) answer : For this new regression model, we clearly have a better
%sense of how much incluence BMI has on the systolic blood pressure. We can
%see that a decrease of 1 kg/m^2 in BMI would result in a 0.1552 decrease
%in mm Hg systolic blood pressure based on the new slope in the new linear 
%regression model. 








