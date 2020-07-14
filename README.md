# Mortality_Lab
Mortality data and lab answers 
mortality <- read.csv("Stack/Mortality Lab - Data.csv")

View(mortality)

#Make a histogram
mortality_nox <- hist(mortality$NOx)

mortality_hist <- hist(mortality$Mortality)

#Add column with log of No2
mortality$lognox <- log(mortality$NOxPot)

#¡´	Make a scatter plot with mortality plotted against log(NOx) (10pts)
#Hypothesize: What is the relationship between these two variables? (10pts)
Mort_LogNox_Plot <- plot(mortality$lognox,mortality$Mortality)

# I would hypothesize that log of NO2 is strongly correlated with Mortality, as log of N02 increases, the rate of morality also increases.

#2. Use lm() to name the linear regression; the dependent (y) goes first, in this case ¡§Chirps¡¨
#fit <- lm( Chirps_Per_Second ~ Temperature_F, data = crick)
#Don¡¦t need to type out the dataset$columnname; just do the column name

#Part Two: Linear Regression
#	We¡¦re going to draw a best-fit line to represent this relationship using simple linear regression analysis. 
#	We¡¦ll take mortality as your dependent variable and log(NOx) as your independent variables

fit <- lm( Mortality ~ lognox, data = mortality) 
abline(fit, col= "red")         

#
#When you run a regression of Y on X, you are assuming the following model:
  
  Y = b0  + b1X + £`
£` ~ N(0, £m2)

#Where b1 and b0 are constants (the slope and intercept of the line)
#And £` is a normally distributed random variable representing the residuals or error in the model.

#Regression helps us estimate b1 and b0, giving us the best-fit line.

#So, if Y is mortality and X is log(NOx), what are your estimates of b1 and b0 (the intercept and slope of the regression)?
#  (10pts)
  
summary(fit)
   
#The intercept is 905.613 and the slope is 15.099

#What is the relationship between mortality and the log of nitrous oxide concentrations across US cities? 
#  (10pts)

# The relationship between mortality and the log of nitrous oxide concentration is positively correlated. The slope of approx. 15 shows that for every value of 1 that log of nitrous oxide increases, the value of mortality increases by 15. 
# This correlation does not appear to be very significant, however we cannot know the true significance of this data without analyzing more complete data. 


#Part Three: First Answers:
#  ¡´	Provide the slope, y-intercept, and full formula (3x4pts each =12pts)
# Y = mx + b
# Y intercept is 905.613
# The slope is 15.099 
# Y = 905.613  + 15.099X + £`
#¡´	Provide your plot, including your line of best fit (10pts
fit
#¡´	Explain why mortality is the dependent variable (10pts)
# Mortality is the dependent variable because it is dependent on the log of the concentration of nitrous oxide.
# The log of the nitrous oxide concentration varies and is independent of mortality. However there appears to be some positive correlation between the two variables. 

#Part Four: Predictions
#	Use your slope and y-intercept values to generate a column for “predicted mortality” based on your estimated linear regression equation. Also, calculate another column for the residuals.
#(10pts)

mortality$predicted <- mortality$lognox*15.099+905.613


mortality$residual <- resid(fit)

fitted(fit)




#art Five: Akron, OH
#	Take the first city: Akron OH. 
#According to your model what was the residual term for that city akron?
head(mortality)

#he residual term for Akron, OH is -24.63192


#art Six: Coefficient of Determination
#What percentage of the variation in mortality was explained by log(NOx)? (Recall the coefficient of determination) 
#5pts)
summary(fit)
# The R-squared or coefficient of determination is 8.71% in other words lognox accounts for an 8.71% determination in the Y value (mortality).

#art Seven: Wrapping Up
#Provide your answers to these questions by making a copy of this document, and adding your answers underneath the questions
#Send them to Olivia, Alex, and TA’s by email
